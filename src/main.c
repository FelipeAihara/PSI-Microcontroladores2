#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/sys/printk.h>
#include <zephyr/device.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(meu_modulo, LOG_LEVEL_INF);

// --- Configuração de LEDs via DeviceTree ---
#define LED_A_NODE DT_ALIAS(led0)  // LED verde
#define LED_B_NODE DT_ALIAS(led2)  // LED vermelho

static const struct gpio_dt_spec ledA = GPIO_DT_SPEC_GET(LED_A_NODE, gpios);
static const struct gpio_dt_spec ledB = GPIO_DT_SPEC_GET(LED_B_NODE, gpios);

// --- Prioridades e tempos ---
#define PRIO_THREAD_A 5   // Maior prioridade (número menor)
#define PRIO_THREAD_B 7   // Menor prioridade
#define TEMPO_A_MS   1500   // Thread A dorme (reduzido temporariamente p/ captura de trace — original: 1500)
#define TEMPO_B_MS   1000   // Thread B dorme (reduzido temporariamente p/ captura de trace — original: 1000)

// ----------------------------------------------------
// THREAD A — Tarefa curta, alta prioridade
// ----------------------------------------------------
void thread_A(void *p1, void *p2, void *p3)
{
    while (1) {
        uint32_t start_cycles = k_cycle_get_32();
        gpio_pin_set_dt(&ledA, 1);  // Liga LED verde

        // Simula processamento rápido 
        for (volatile int i = 0; i < 200000; i++) {}

        gpio_pin_set_dt(&ledA, 0);  // Desliga LED verde

        uint32_t end_cycles = k_cycle_get_32();
        uint32_t elapsed = end_cycles - start_cycles;

        double start_us = (double)start_cycles / 48.0;
        double end_us = (double)end_cycles / 48.0;
        double elapsed_us = (double)elapsed / 48.0;  // resultado em microsegundos
        // printk("Tempo do início: %.2f us, ", start_us);
        // printk("Tempo do fim: %.2f us, ", end_us);
        // printk("Tempo de duração: %.2f us\n", elapsed_us);
        // LOG_INF("Tempo do início: %.2f us, ", start_us);
        // LOG_INF("Tempo do fim: %.2f us, ", end_us);
        // LOG_INF("Tempo de duração: %.2f us\n", elapsed_us);
        
   
        k_msleep(TEMPO_A_MS);       // Dorme — libera CPU
    }
}

// ----------------------------------------------------
// THREAD B — Tarefa longa, baixa prioridade
// ----------------------------------------------------
void thread_B(void *p1, void *p2, void *p3)
{
    while (1) {
        uint32_t start_cycles = k_cycle_get_32();
        gpio_pin_set_dt(&ledB, 1);  // Liga LED vermelho

        // Simula processamento mais longo 
        for (volatile int i = 0; i < 10000000; i++) {
            if (i % 100000 == 0) {
                // Aqui não imprimimos nada — apenas ocupamos a CPU
            }
        }

        gpio_pin_set_dt(&ledB, 0);  // Desliga LED vermelho
        
        uint32_t end_cycles = k_cycle_get_32();
        uint32_t elapsed = end_cycles - start_cycles;

        double start_us = (double)start_cycles / 48.0;
        double end_us = (double)end_cycles / 48.0;
        double elapsed_us = (double)elapsed / 48.0;  // resultado em microsegundos
        // printk("Tempo do início: %.2f us, ", start_us);
        // printk("Tempo do fim: %.2f us, ", end_us);
        // printk("Tempo de duração: %.2f us\n", elapsed_us);
        //LOG_INF("Tempo do início: %.2f us, ", start_us);
        //LOG_INF("Tempo do fim: %.2f us, ", end_us);
        //LOG_INF("Tempo de duração: %.2f us\n", elapsed_us);

        k_msleep(TEMPO_B_MS);       // Dorme um pouco
    }
}

// ----------------------------------------------------
// Definição das threads
// ----------------------------------------------------
K_THREAD_DEFINE(a_tid, 1024, thread_A, NULL, NULL, NULL,
                PRIO_THREAD_A, 0, 0);
K_THREAD_DEFINE(b_tid, 1024, thread_B, NULL, NULL, NULL,
                PRIO_THREAD_B, 0, 0);

// ----------------------------------------------------
// Função principal
// ----------------------------------------------------
void main(void)
{
    // Inicializa GPIOs dos LEDs
    if (!device_is_ready(ledA.port) || !device_is_ready(ledB.port)) {
        return;
    }
    gpio_pin_configure_dt(&ledA, GPIO_OUTPUT_INACTIVE);
    gpio_pin_configure_dt(&ledB, GPIO_OUTPUT_INACTIVE);

    printk("=== Demonstração de Preempção com LEDs ===\n");
    printk("Thread A (vermelho): prioridade %d\n", PRIO_THREAD_A);
    printk("Thread B (verde): prioridade %d\n", PRIO_THREAD_B);

    while (1) {
        k_sleep(K_FOREVER); // Main dorme para liberar CPU.
    }
}
