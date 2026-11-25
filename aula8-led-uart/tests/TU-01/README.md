### 1. TU-01: LEDs

- **Descrição**: testar os LEDs da placa, com diferentes intensidades e misturando as cores
- **Pré-condição:** placa com o código do diretório do teste, resetada e com a serial ligada
- **Etapas:**
  1. Rodar o comando ```bash pyserial-miniterm /dev/ttyACM0 115200 | tee log_gerado.txt```
  2. Reiniciar a placa
- **Resultado esperado:** a placa deveria seguir o seguinte ciclo: verde - vermelho - azul - amarelo (50% vermelho e verde) - magenta (50% vermelho e azul) - ciano (50% verde e azul) - branco (100% das 3 cores) - repete
- **Evidência:** 1 log e 1 vídeo
