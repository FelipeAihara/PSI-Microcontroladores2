#include "led.hpp"
#include <zephyr/kernel.h>

#define VERDE 0
#define VERMELHO 1
#define AZUL 2

void fade_led(LED &led) {
    for (int i = 0; i < 52; i++) {
        led.write(i * 5);
        k_msleep(50);
    }
    led.write(0);
}

int main(void)
{
    int caso = 0;
    LED myGreenLED(TPM2, 1, GPIOB, 19); // PTB19
    LED myRedLED(TPM2, 0, GPIOB, 18); // PTB18
    LED myBlueLED(TPM0, 1, GPIOD, 1); // PTD1

    while(1) {
        switch(caso) {
            case VERDE:
                fade_led(myGreenLED);
                caso = VERMELHO;
                break;
            case VERMELHO:
                fade_led(myRedLED);
                caso = AZUL;
                break;
            case AZUL:
                fade_led(myBlueLED);
                caso = VERDE;
                break;
        }
    }
}