/* NOTAS
- O brilho vai de 0 a 255
- O LED é active low!
*/

#include <zephyr/kernel.h>

extern "C" 
{
    #include "pwm_z42.h"
    #include "MKL25Z4.h"
}
 
#define TPM_MODULE 7500

class LED
{
private:
    TPM_Type *tpm_;
    uint8_t channel_;
    GPIO_Type *port_;
    uint8_t pin_;
    int brilho_atual_;

    int calcularDuty(int brilho) {
        return (TPM_MODULE * (255 - brilho)) / 255;
    }

public:
    LED(TPM_Type *tpm, uint8_t ch, GPIO_Type *p, uint8_t pn);
    void write(int brilho);

    int getBrilhoAtual() { return brilho_atual_; }
};