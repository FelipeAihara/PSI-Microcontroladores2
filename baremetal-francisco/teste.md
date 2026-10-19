
# Planejamento de Testes - Baremetal

## Objetivo

Validar o funcionamento de dois LEDs na placa
FRDM-KL25Z utilizando Zephyr.

## Ambiente

- Placa: FRDM-KL25Z
- Framework: Zephyr
- IDE: VS Code / PlatformIO

## Teste 1 - Compilacao

Procedimento:
1. Abrir o projeto no VS Code.
2. Executar Build no PlatformIO.

Resultado esperado:
Compilacao concluida sem erros.

## Teste 2 - Gravacao

Procedimento:
1. Conectar a placa ao computador.
2. Executar Upload no PlatformIO.
3. Reiniciar a placa, se necessario.

Resultado esperado:
Firmware gravado e executado corretamente.

## Teste 3 - LED 0

Procedimento:
1. Executar o programa.
2. Observar o LED 0 durante 10 segundos.

Resultado esperado:
LED 0 alterna seu estado a cada 1000 ms.

## Teste 4 - LED 1

Procedimento:
1. Executar o programa.
2. Observar o LED 1 durante 10 segundos.

Resultado esperado:
LED 1 alterna seu estado a cada 500 ms.

## Teste 5 - Funcionamento simultaneo

Procedimento:
1. Observar os dois LEDs por 30 segundos.

Resultado esperado:
Os dois LEDs funcionam simultaneamente,
sem travamentos ou interferencias perceptiveis.

## Teste 6 - Desafio de 350 ms

Procedimento:
1. Alterar LED1_INTERVAL para 350.
2. Compilar e gravar novamente.
3. Observar os LEDs por 7 segundos.

Resultado esperado:
LED 0 alterna a cada 1000 ms.
LED 1 alterna a cada 350 ms.


## Validacao

A dupla responsavel devera executar os testes
e registrar os resultados nos comentarios
da Pull Request.

Aprovacao somente apos validacao dos testes.
