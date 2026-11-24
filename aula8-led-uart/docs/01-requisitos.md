## 1. Requisitos funcionais

O sistema deverá controlar os 3 LEDs da FRDM-KL25Z pela UART, tendo interfaces para poder ligar, desligar, alternar e piscar o LED com intensidade variável .

| ID | Requisito | Origem | Critério de aceitação |
|---|---|---|---|
| RF-01 | Conseguir ligar, desligar, alternar e piscar (com diferentes períodos) os LEDs pela UART e com brilho variável | Enunciado |   
| RF-02 | Caso seja enviada uma mensagem inválida, o sistema deverá printar uma mensagem de erro e continuar funcionando normalmente | Enunciado | Enviar mensagens inválidas (entrada vazia, buffer pequeno, buffer grande, mensagem com tamanho certo mas inválida) e certificar que o sistema continua funcionando normalmente | 

## 2. Requisitos não funcionais

| ID | Requisito | Origem | Critério de aceitação |
|---|---|---|---|
| RNF-01 | O controle de LEDs deverá ser feito pela biblioteca disponibilizada no Notion, não pelos drivers do Zephyr | O Zephyr não tem driver PWM para a FRDM-KL25Z | Revisão do código
| RNF-02 | Calcular o check com o CRC-8 | Enunciado | Revisão do código