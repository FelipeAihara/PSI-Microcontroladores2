## 1. Requisitos funcionais

O sistema deverá controlar os 3 LEDs da FRDM-KL25Z pela UART, tendo interfaces para poder ligar, desligar, alternar e piscar o LED com intensidade variável .

| ID | Requisito | Origem | Critério de aceitação |
|---|---|---|---|
| RF-01 | Conseguir ligar, desligar e alternar os 3 LEDs da placa individualmente, com intensidade variável | Enunciado | Enviar comandos para ligar, desligar e alternar cada LED individualmente e ver se eles respondem em concordância com o comando |
| RF-02 | Conseguir colocar os 3 LEDs da placa no modo pisca individualmente, com períodos de 1 e 2 segundos, com intensidade variável | Enunciado | Enviar comandos para cada LED piscar (separadamente) com os dois períodos diferentes e ver se eles respondem em concordância com o comando |
| RF-03 | Conseguir ligar, desligar e alternar os 3 LEDs simultaneamente com intensidade variável, resultando em uma nova cor | Eu | Primeiro enviar comandos para ligar, desligar e alternar os LEDs R e G juntos e ver se o resultado é a cor marrom. Depois, enviar comandos para ligar, desligar e alternar os 3 LEDs e ver se o resultado é a cor branca. |
| RF-04 | Conseguir colocar os 3 LEDs da placa no modo pisca simultaneamente com intensidade variável, com períodos de 1 e 2 segundos | Eu | Testar o modo pisca com os LEDs R e G juntos e depois com os 3 LEDs juntos. |
| RF-05 | Caso seja enviada uma mensagem inválida, o sistema deverá simplesmente ignorar a mensagem e continuar funcionando normalmente | Enunciado | Enviar mensagens inválidas (entrada vazia, buffer grande, transmissão interrompida, mensagem com tamanho certo mas inválida) e certificar que o sistema continua funcionando normalmente | 

## 2. Requisitos não funcionais

| ID | Requisito | Origem | Critério de aceitação |
|---|---|---|---|
| RNF-01 | O controle de LEDs deverá ser feito pela biblioteca disponibilizada no Notion, não pelos drivers do Zephyr | O Zephyr não tem driver PWM para a FRDM-KL25Z | Revisão do código