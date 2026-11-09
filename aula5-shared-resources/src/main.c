#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>

#define STACK_SIZE 1024
#define PRIORITY_1 5
#define PRIORITY_2 5

volatile int n_pao = 0;
volatile int saldo_vitrine = 0;

void consumidor(void *arg1, void *arg2, void *arg3) {
    while (1) {
        saldo_vitrine--;
        printk("CLIENTE: Peguei pão #%d (Saldo vitrine = %d)\n", n_pao, saldo_vitrine);
        k_msleep(1500);
    }
}

K_THREAD_DEFINE(thread_consumidor, STACK_SIZE, consumidor,
                NULL, NULL, NULL,
                PRIORITY_2, 0, 0);

void padeiro(void *arg1, void *arg2, void *arg3) {
    while (1) {
        n_pao++;
        saldo_vitrine++;
        printk("PADEIRO: Pão #%d pronto (Saldo vitrine = %d)\n", n_pao, saldo_vitrine);

        k_msleep(1000);
    }
}

K_THREAD_DEFINE(thread_a_padeiro, STACK_SIZE, padeiro,
                NULL, NULL, NULL,
                PRIORITY_1, 0, 0);

/*void main(void) {
    int ret;

    // Verifica se o device está pronto
    if (!gpio_is_ready_dt(&led0)) {
        printk("Error: LED device %s is not ready\n", led0.port->name);
        return;
    }

    if (!gpio_is_ready_dt(&led1)) {
        printk("Error: LED device %s is not ready\n", led1.port->name);
        return;
    }

    // Configura o pino como saída
    ret = gpio_pin_configure_dt(&led0, GPIO_OUTPUT_ACTIVE);
    if (ret < 0) {
        printk("Error %d: failed to configure LED pin\n", ret);
        return;
    }

    ret = gpio_pin_configure_dt(&led1, GPIO_OUTPUT_ACTIVE);
    if (ret < 0) {
        printk("Error %d: failed to configure LED pin\n", ret);
        return;
    }

    return;
}
*/
