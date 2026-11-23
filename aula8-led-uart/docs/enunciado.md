# Controle de LEDs pela UART

Implemente um receptor UART para controlar um LED RGB usando um protocolo fixo de 6 bytes:

`ID | R | G | B | AÇÃO | CHECK`

Onde `AÇÃO` é um dos códigos: 0x01 LIGAR, 0x02 DESLIGAR, 0x03 TOGGLE, 0x04 PISCA 1s, 0x05 PISCA 2s. O campo `CHECK` é um checksum simples calculado como XOR dos 5 primeiros bytes. Seu receptor deve: ler pacotes de 6 bytes, validar ID e CHECK, e executar a ação correspondente. Trate pacotes inválidos (ID errado, CHECK incorreto) sem travar o sistema. Como bônus, implemente CRC-8 em vez de XOR e controle de intensidade com PWM (veja o exemplo de PWM no Zephyr 4.2 .

## Configuração UART para testes

- Baud rate: **115200** bps
- Formato: **8N1** (8 data bits, sem paridade, 1 stop bit) — a paridade do pacote é em nível de protocolo, não da linha serial.
- Buffer e timeout: o receptor deve ler bytes com um timeout curto para detectar pacotes truncados.