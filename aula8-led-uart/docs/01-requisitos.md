## 1. Requisitos funcionais

O sistema deverá controlar os 3 LEDs da FRDM-KL25Z pela UART, tendo interfaces para poder ligar, desligar, alternar e piscar o LED com intensidade variável .


- [ ] Conseguir ligar, desligar, alternar e piscar (com diferentes períodos) os LEDs pela UART e com brilho variável | Enunciado |   
- [ ] Caso seja enviada uma mensagem inválida, o sistema deverá printar uma mensagem de erro e continuar funcionando normalmente | Enunciado | Enviar mensagens inválidas (entrada vazia, buffer pequeno, buffer grande, mensagem com tamanho certo mas inválida) e certificar que o sistema continua funcionando normalmente | 

## 2. Requisitos não funcionais


- [ ] O controle de LEDs deverá ser feito pela biblioteca disponibilizada no Notion, não pelos drivers do Zephyr | O Zephyr não tem driver PWM para a FRDM-KL25Z | Revisão do código
- [ ] Calcular o check com o CRC-8 | Enunciado | Revisão do código
- [ ] O código deverá ser feito em C++ (foi conveniente pois eu já tinha feito um projeto com PWM na FRDM-KL25Z, aí eu consegui reaproveitar a classe "Servo" do projeto anterior, só tive que fazer alguns ajustes para a classe "LED" desse projeto)