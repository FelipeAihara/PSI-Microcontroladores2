# Plano de testes

Este plano detalha os testes (unitários, de integração, de sistema e de validação) do projeto de controle de LEDs pela UART.

OBS.: como esse projeto é relativamente simples, eu pulei os testes de integração / sistema e fiz só testes unitários e de validação.

## 1. Testes unitários

### TU-01: LEDs

- **Descrição**: testar os LEDs da placa, misturando as cores
- **Pré-condição:** placa com o código do diretório do teste, resetada e com a serial ligada
- **Etapas:**
  1. Rodar o comando ```bash pyserial-miniterm /dev/ttyACM0 115200 | tee log_gerado.txt```
  2. Reiniciar a placa
- **Resultado esperado:** a placa deveria seguir o seguinte ciclo: verde - vermelho - azul - amarelo (50% vermelho e verde) - magenta (50% vermelho e azul) - ciano (50% verde e azul) - branco (100% das 3 cores) - repete
- **Evidência:** 1 log e 1 vídeo

### TU-01: fade LEDs

- **Descrição**: testar as intensidades dos 3 LEDs
- **Pré-condição:** placa com o código do diretório do teste, resetada e com a serial ligada
- **Etapas:**
  1. Rodar o comando ```bash pyserial-miniterm /dev/ttyACM0 115200 | tee log_gerado.txt```
  2. Reiniciar a placa
- **Resultado esperado:** a placa deveria fazer um fade em cada LED, seguindo a ordem verde -> vermelho -> azul
- **Evidência:** 1 vídeo

### TU-03: UART - eco

- **Descrição**: testa o funcionamento do driver UART da FRDM-KL25Z com um eco simples
- **Pré-condição:** placa com o código do diretório do teste, resetada e com a serial ligada
- **Etapas:**
  1. Rodar o comando ```pyserial-miniterm /dev/ttyACM0 115200 | tee log_gerado.txt```
  2. Reiniciar a placa
  3. Escrever "Olá mundo!" no console
- **Resultado esperado:** o console deveria imprimir "Eco: Olá mundo!"
- **Evidência:** 1 log

### TU-04: Protocolo

- **Descrição**: testar o protocolo fixo de 6 bytes para controlar o LED RGB
- **Pré-condição:** placa com o código do diretório do teste, resetada e com a serial ligada
- **Etapas:**
  1. Rodar o comando ```pyserial-miniterm /dev/ttyACM0 115200 | tee log_gerado.txt```
  2. Reiniciar a placa
  3. Escrever no terminal (uma de cada vez) as linhas contidas em [entrada_console.txt](TU-03/entrada_console.txt)
- **Resultado esperado:** o log gerado deverá bater com o [log_correto.txt](TU-03/log_correto.txt)
- **Evidência:** 1 log

## 2. Testes de validação

### TA-01: controlar os LEDs

- **Requisitos:** [RF-01](../docs/01-requisitos.md)
- **Descrição:** testa o controle de LEDs pela UART
- **Pré-condição:** placa com o firmware principal, resetada e com a serial ligada
- **Etapas:**
  1. Rodar o comando ```pyserial-miniterm /dev/ttyACM0 115200 | tee log_gerado.txt```
  2. Reiniciar a placa
  3. Escrever no terminal (uma de cada vez) as linhas contidas em [entrada_console.txt](TA-01/entrada_console.txt)
- **Resultado esperado:** o log gerado deverá bater com o [log_correto.txt](TA-01/log_correto.txt) e os LEDs deverão seguir a sequência
  - verde ligado -> verde desligado -> verde ligado -> verde piscando (T=1s) -> verde piscando (T=2s) -> magenta ligado -> magenta desligado -> magenta ligado -> magenta piscando (T=1s) -> magenta piscando (T=2s) -> branco ligado -> branco desligado -> branco ligado -> branco piscando (T=1s) -> branco piscando (T=2s)
- **Evidência:** 1 vídeo e 1 log

### TA-02: mensagens inválidas

- **Requisitos:** [RF-02](../docs/01-requisitos.md)
- **Descrição:** testa a resposta do sistema a respostas inválidas
- **Pré-condição:** placa com o firmware principal, resetada e com a serial ligada
- **Etapas:**
  1. Rodar o comando ```pyserial-miniterm /dev/ttyACM0 115200 | tee log_gerado.txt```
  2. Reiniciar a placa
  3. Escrever no terminal (uma de cada vez) as linhas contidas em [entrada_console.txt](TA-02/entrada_console.txt)
- **Resultado esperado:** o log gerado deverá bater com o [log_correto.txt](TA-02/log_correto.txt) e os LEDs deverão seguir a sequência:
  - verde ligado -> verde desligado -> verde ligado -> verde desligado -> verde ligado
- **Evidência:** 1 vídeo e 1 log