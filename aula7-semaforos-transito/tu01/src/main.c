// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// Includes

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/logging/log.h>

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// Alguns defines, declaração de variáveis e afins

#define STACK_SIZE 1024
#define PRIORITY_1 5
#define PRIORITY_2 5

#define LED_EXT_VRM_NODE DT_ALIAS(led_ext_vrm)
#define LED_EXT_VD_NODE DT_ALIAS(led_ext_vd)

#if DT_NODE_HAS_STATUS(LED_EXT_VRM_NODE, okay)
static const struct gpio_dt_spec led_ext_vrm = GPIO_DT_SPEC_GET(LED_EXT_VRM_NODE, gpios);
#else
#error "Unsupported board: led0 devicetree alias is not defined"
#endif

#if DT_NODE_HAS_STATUS(LED_EXT_VD_NODE, okay)
static const struct gpio_dt_spec led_ext_vd = GPIO_DT_SPEC_GET(LED_EXT_VD_NODE, gpios);
#else
#error "Unsupported board: led1 devicetree alias is not defined"
#endif

LOG_MODULE_REGISTER(teste, LOG_LEVEL_DBG);   // nome do módulo + nível dele

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// Define mutex

K_MUTEX_DEFINE(mutex_semaforo_pedestre);

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// Define a thread do LED vermelho

void t_led_vrm(void *arg1, void *arg2, void *arg3) {
    while (1) {
        k_mutex_lock(&mutex_semaforo_pedestre, K_FOREVER);
        printk("[%u ms] Ligando LED vermelho!\n", k_uptime_get_32());
        gpio_pin_set_dt(&led_ext_vrm, 1);
        k_sleep(K_FOREVER);
        gpio_pin_set_dt(&led_ext_vrm, 0);
        printk("[%u ms] Desligando LED vermelho!\n", k_uptime_get_32());
        k_mutex_unlock(&mutex_semaforo_pedestre);
        k_sleep(K_FOREVER);
    }
}

K_THREAD_DEFINE(thread_led_vrm, STACK_SIZE, t_led_vrm,
                NULL, NULL, NULL,
                PRIORITY_1, 0, 0);

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// Define a thread do LED verde

void t_led_vd(void *arg1, void *arg2, void *arg3) {
    while (1) {
        k_mutex_lock(&mutex_semaforo_pedestre, K_FOREVER);
        printk("[%u ms] Ligando LED verde!\n", k_uptime_get_32());
        gpio_pin_set_dt(&led_ext_vd, 1);
        k_sleep(K_FOREVER);
        gpio_pin_set_dt(&led_ext_vd, 0);
        printk("[%u ms] Desligando LED verde!\n", k_uptime_get_32());
        k_mutex_unlock(&mutex_semaforo_pedestre);
        k_sleep(K_FOREVER);
    }
}

K_THREAD_DEFINE(thread_led_vd, STACK_SIZE, t_led_vd,
                NULL, NULL, NULL,
                PRIORITY_2, 0, 0);

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// Define os timers

void timer_t_led_vrm_handler(struct k_timer *timer_id) {
    k_thread_resume(thread_led_vrm);
}

void timer_t_led_vd_handler(struct k_timer *timer_id) {
    k_thread_resume(thread_led_vd);
}

K_TIMER_DEFINE(timer_t_led_vrm, timer_t_led_vrm_handler, NULL);
K_TIMER_DEFINE(timer_t_led_vd, timer_t_led_vd_handler, NULL);

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// Main

int main(void) {
    int ret;

    // -----------------------------------------------------------------------
    // -----------------------------------------------------------------------
    // Verifica se os devices estão prontos

    if (!gpio_is_ready_dt(&led_ext_vrm)) {
        printk("Error: LED device %s is not ready\n", led_ext_vrm.port->name);
        return 0;
    }

    if (!gpio_is_ready_dt(&led_ext_vd)) {
        printk("Error: LED device %s is not ready\n", led_ext_vd.port->name);
        return 0;
    }

    // Configura o pino como saída
    ret = gpio_pin_configure_dt(&led_ext_vrm, GPIO_OUTPUT_ACTIVE);
    if (ret < 0) {
        printk("Error %d: failed to configure LED pin\n", ret);
        return 0;
    }

    ret = gpio_pin_configure_dt(&led_ext_vd, GPIO_OUTPUT_ACTIVE);
    if (ret < 0) {
        printk("Error %d: failed to configure LED pin\n", ret);
        return 0;
    }


    // -----------------------------------------------------------------------
    // -----------------------------------------------------------------------
    // Inicializa os timers
    k_timer_start(&timer_t_led_vrm, K_MSEC(0), K_MSEC(4000));
    k_timer_start(&timer_t_led_vd, K_MSEC(0), K_MSEC(4000));

    // -----------------------------------------------------------------------
    // -----------------------------------------------------------------------

    k_sleep(K_FOREVER);
}