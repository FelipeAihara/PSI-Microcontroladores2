/*
 * Aula 4 - Acelerômetro MMA8451Q + integração numérica com threads
 *
 * Arquitetura (pipeline produtor/consumidor):
 *
 *   [k_timer 50 ms] --k_sem--> T_aquisicao --msgq--> T_integracao --msgq--> T_serial --> printk
 *        (ISR)                  prio 1              prio 2                 prio 3
 *
 * - O timer roda em contexto de ISR e só "dá" um semáforo: ISR curta.
 * - Cada thread bloqueia esperando dado (semáforo ou fila), então nenhuma
 *   fica em busy-wait e o escalonador só as acorda quando há trabalho.
 * - As filas (k_msgq) copiam a struct inteira, então não há variáveis
 *   globais compartilhadas entre threads -> sem race condition.
 */

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/sensor.h>
#include <zephyr/drivers/i2c.h>
#include <zephyr/sys/printk.h>

// === Período de amostragem ===
#define PERIODO_MS 50

// === Prioridades (número menor = prioridade maior; todas preemptivas) ===
#define PRIO_AQUISICAO  1   // restrição de tempo: menor jitter possível
#define PRIO_INTEGRACAO 2   // cálculo curto, depende da aquisição
#define PRIO_SERIAL     3   // lenta (UART), pode esperar

#define STACK_SIZE 2048     // printk com %f + float por software (M0+ sem FPU)

// === Calibração: nº de amostras (placa parada) usadas para estimar o offset ===
#define N_CALIB 20

// === Endereço e registradores do MMA8451Q ===
#define MMA8451Q_I2C_ADDR    0x1D
#define MMA8451Q_CTRL_REG1   0x2A

// === Bits de configuração (CTRL_REG1) ===
#define MMA8451Q_ACTIVE_BIT  0x01
#define MMA8451Q_ODR         (0x3 << 3)  // DR[5:3] = 011b -> 100 Hz (datasheet, tabela ODR)

// === Dispositivos ===
static const struct device *const accel = DEVICE_DT_GET(DT_ALIAS(accel0));
static const struct device *const i2c_dev = DEVICE_DT_GET(DT_NODELABEL(i2c0));

// === Mensagens trocadas entre as threads ===
struct amostra {
    int64_t t_ms;           // instante da leitura (k_uptime_get)
    float ax, ay, az;       // m/s²
};

struct estado {
    float ax, ay, az;       // aceleração já sem offset (m/s²)
    float vx, vy, vz;       // m/s
    float px, py, pz;       // m
};

// Filas com 10 posições: folga caso a serial atrase algumas amostras.
K_MSGQ_DEFINE(fila_amostras, sizeof(struct amostra), 10, 4);
K_MSGQ_DEFINE(fila_estados, sizeof(struct estado), 10, 4);

// Semáforo de contagem: o timer "dá", a aquisição "pega".
// Diferente de suspend/resume, o evento não se perde se a thread ainda
// não estiver esperando quando o timer expirar.
K_SEM_DEFINE(sem_amostrar, 0, 1);

// === Timer (callback roda em contexto de ISR) ===
static void timer0_handler(struct k_timer *timer_id)
{
    ARG_UNUSED(timer_id);
    k_sem_give(&sem_amostrar);
}

K_TIMER_DEFINE(timer0, timer0_handler, NULL);

// ============================================================================
// Thread 1: aquisição
// ============================================================================
static void thread_aquisicao(void *p1, void *p2, void *p3)
{
    struct sensor_value ax, ay, az;
    struct amostra a;
    int ret;

    while (1) {
        k_sem_take(&sem_amostrar, K_FOREVER);

        ret = sensor_sample_fetch(accel);
        if (ret) {
            printk("Erro sensor_sample_fetch (%d)\n", ret);
            continue;
        }

        a.t_ms = k_uptime_get();
        sensor_channel_get(accel, SENSOR_CHAN_ACCEL_X, &ax);
        sensor_channel_get(accel, SENSOR_CHAN_ACCEL_Y, &ay);
        sensor_channel_get(accel, SENSOR_CHAN_ACCEL_Z, &az);

        a.ax = sensor_value_to_float(&ax);
        a.ay = sensor_value_to_float(&ay);
        a.az = sensor_value_to_float(&az);

        // K_NO_WAIT: a aquisição nunca deve bloquear. Se a fila estiver
        // cheia, descarta a amostra (e avisa) em vez de atrasar o período.
        if (k_msgq_put(&fila_amostras, &a, K_NO_WAIT) != 0) {
            printk("fila_amostras cheia, amostra descartada\n");
        }
    }
}

// ============================================================================
// Thread 2: integração (regra dos trapézios)
// ============================================================================
static void thread_integracao(void *p1, void *p2, void *p3)
{
    struct amostra a;
    struct estado e = {0};
    float off_x = 0, off_y = 0, off_z = 0;
    float ax_ant = 0, ay_ant = 0, az_ant = 0;
    float vx_ant = 0, vy_ant = 0, vz_ant = 0;
    int64_t t_ant = 0;

    // --- Calibração: média das primeiras N amostras com a placa parada.
    // Remove o offset do sensor e a gravidade (~9,8 m/s² em z).
    for (int i = 0; i < N_CALIB; i++) {
        k_msgq_get(&fila_amostras, &a, K_FOREVER);
        off_x += a.ax;
        off_y += a.ay;
        off_z += a.az;
    }
    off_x /= N_CALIB;
    off_y /= N_CALIB;
    off_z /= N_CALIB;
    t_ant = a.t_ms;     // primeira referência de tempo (acel. e vel. iniciais = 0)

    while (1) {
        k_msgq_get(&fila_amostras, &a, K_FOREVER);

        // dt medido (s): absorve jitter/amostras perdidas melhor que 0,05 fixo
        float dt = (float)(a.t_ms - t_ant) / 1000.0f;
        t_ant = a.t_ms;

        e.ax = a.ax - off_x;
        e.ay = a.ay - off_y;
        e.az = a.az - off_z;

        // Trapézio: v_n = v_{n-1} + (a_n + a_{n-1})/2 * dt
        e.vx = vx_ant + 0.5f * (e.ax + ax_ant) * dt;
        e.vy = vy_ant + 0.5f * (e.ay + ay_ant) * dt;
        e.vz = vz_ant + 0.5f * (e.az + az_ant) * dt;

        // Trapézio: p_n = p_{n-1} + (v_n + v_{n-1})/2 * dt
        e.px += 0.5f * (e.vx + vx_ant) * dt;
        e.py += 0.5f * (e.vy + vy_ant) * dt;
        e.pz += 0.5f * (e.vz + vz_ant) * dt;

        ax_ant = e.ax; ay_ant = e.ay; az_ant = e.az;
        vx_ant = e.vx; vy_ant = e.vy; vz_ant = e.vz;

        if (k_msgq_put(&fila_estados, &e, K_NO_WAIT) != 0) {
            printk("fila_estados cheia, estado descartado\n");
        }
    }
}

// ============================================================================
// Thread 3: envio pela serial (formato CSV, 9 campos)
// ============================================================================
static void thread_serial(void *p1, void *p2, void *p3)
{
    struct estado e;

    printk("ax,ay,az,vx,vy,vz,px,py,pz\n");

    while (1) {
        k_msgq_get(&fila_estados, &e, K_FOREVER);
        printk("%.3f,%.3f,%.3f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f\n",
               (double)e.ax, (double)e.ay, (double)e.az,
               (double)e.vx, (double)e.vy, (double)e.vz,
               (double)e.px, (double)e.py, (double)e.pz);
    }
}

// Threads criadas com atraso K_FOREVER e iniciadas pela main depois da
// configuração do sensor (k_thread_start).
K_THREAD_DEFINE(tid_aquisicao, STACK_SIZE, thread_aquisicao, NULL, NULL, NULL,
                PRIO_AQUISICAO, 0, SYS_FOREVER_MS);
K_THREAD_DEFINE(tid_integracao, STACK_SIZE, thread_integracao, NULL, NULL, NULL,
                PRIO_INTEGRACAO, 0, SYS_FOREVER_MS);
K_THREAD_DEFINE(tid_serial, STACK_SIZE, thread_serial, NULL, NULL, NULL,
                PRIO_SERIAL, 0, SYS_FOREVER_MS);

// ============================================================================
static void mma8451q_configurar_odr(void)
{
    uint8_t buf[2];
    int ret;

    // 1) Standby (necessário antes de mudar ODR)
    buf[0] = MMA8451Q_CTRL_REG1;
    buf[1] = 0x00;
    ret = i2c_write(i2c_dev, buf, 2, MMA8451Q_I2C_ADDR);
    if (ret) {
        printk("ERRO ao colocar MMA8451Q em standby (%d)\n", ret);
        return;
    }

    // 2) ODR = 100 Hz
    buf[1] = MMA8451Q_ODR;
    ret = i2c_write(i2c_dev, buf, 2, MMA8451Q_I2C_ADDR);
    if (ret) {
        printk("ERRO ao configurar ODR (%d)\n", ret);
        return;
    }

    // 3) Ativo
    buf[1] = MMA8451Q_ODR | MMA8451Q_ACTIVE_BIT;
    ret = i2c_write(i2c_dev, buf, 2, MMA8451Q_I2C_ADDR);
    if (ret) {
        printk("ERRO ao ativar MMA8451Q (%d)\n", ret);
        return;
    }

    printk("MMA8451Q configurado para 100 Hz via I2C.\n");
}

int main(void)
{
    if (!device_is_ready(accel)) {
        printk("Sensor MMA8451Q nao esta pronto!\n");
        return 0;
    }

    if (!device_is_ready(i2c_dev)) {
        printk("I2C nao esta pronto!\n");
        return 0;
    }

    printk("Configurando ODR via I2C...\n");
    mma8451q_configurar_odr();

    // Pequeno atraso para estabilizar após reativar
    k_msleep(200);

    printk("Calibrando (%d amostras) - mantenha a placa parada...\n", N_CALIB);

    k_thread_start(tid_serial);
    k_thread_start(tid_integracao);
    k_thread_start(tid_aquisicao);

    // Período fixo de 50 ms gerado pelo hardware (não acumula drift como
    // um k_msleep no laço da thread acumularia).
    k_timer_start(&timer0, K_MSEC(PERIODO_MS), K_MSEC(PERIODO_MS));

    return 0;   // a main termina; as outras threads continuam rodando
}
