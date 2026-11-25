#include "led.hpp"
#include <zephyr/kernel.h>

int main(void)
{
    LED myGreenLED(TPM2, 1, GPIOB, 19); // PTB19
    LED myRedLED(TPM2, 0, GPIOB, 18); // PTB18
    LED myBlueLED(TPM0, 1, GPIOD, 1); // PTD1

    while(1) {
        // Liga o verde
        printk("[%d] Ligando LED verde\n", k_uptime_get_32());
        myRedLED.write(0);
        myGreenLED.write(255);
        myBlueLED.write(0);
        k_msleep(1000);

        // Liga o vermelho
        printk("[%d] Ligando LED vermelho\n", k_uptime_get_32());
        myGreenLED.write(0);
        myRedLED.write(255);
        k_msleep(1000);

        // Liga o azul
        printk("[%d] Ligando LED azul\n", k_uptime_get_32());
        myRedLED.write(0);
        myBlueLED.write(255);
        k_msleep(1000);

        // Liga o amarelo
        printk("[%d] Ligando LED amarelo\n", k_uptime_get_32());
        myBlueLED.write(0);
        myGreenLED.write(255);
        myRedLED.write(255);
        k_msleep(1000);
        
        // Liga o magenta
        printk("[%d] Ligando LED magenta\n", k_uptime_get_32());
        myGreenLED.write(0);
        myBlueLED.write(255);
        k_msleep(1000);

        // Liga o ciano
        printk("[%d] Ligando LED ciano\n", k_uptime_get_32());
        myRedLED.write(0);
        myGreenLED.write(255);
        k_msleep(1000);

        // Liga o branco
        printk("[%d] Ligando LED branco\n", k_uptime_get_32());
        myRedLED.write(255);
        k_msleep(1000);
    }
}