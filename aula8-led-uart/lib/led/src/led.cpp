#include "led.hpp"

LED::LED(TPM_Type *tpm, uint8_t ch, GPIO_Type *p, uint8_t pn) 
    : tpm_(tpm), channel_(ch), port_(p), pin_(pn)
{
    LED::brilho_atual_ = 0;
    pwm_tpm_Init(tpm_, TPM_PLLFLL, TPM_MODULE, TPM_CLK, PS_128, EDGE_PWM);
    pwm_tpm_Ch_Init(tpm_, channel_, TPM_PWM_H, port_, pin_);
    int duty_inicial = calcularDuty(LED::brilho_atual_);
    pwm_tpm_CnV(tpm_, channel_, duty_inicial);
}

void LED::write(int brilho)
{
    if (brilho < 0) brilho = 0;
    if (brilho > 255) brilho = 255;

    int duty = calcularDuty(brilho);
    pwm_tpm_CnV(tpm_, channel_, duty);
    brilho_atual_ = brilho; // Atualiza o estado interno
}