# Planejamento de Testes: Atividade Baremetal

Placa: FRDM-KL25Z | Zephyr 4.2 | Branch: `baremetal`

## Definições adotadas (leia antes de testar)

O enunciado não define "piscar a cada X". Este plano adota:

- **"Piscar a cada T"** = o LED **muda de estado (toggle) a cada T**. Ou seja, um ciclo completo (aceso + apagado) dura 2T.
- **LED A** = `led0` do devicetree: toggle a cada **1000 ms** (ciclo completo de 2 s).
- **LED B** = `led1` do devicetree: toggle a cada **500 ms** (ciclo completo de 1 s).

Se o professor definir "piscar" como ciclo completo de T, divida os intervalos esperados por 2 (A = 500 ms, B = 250 ms).

## Pré-requisitos

- Placa conectada e visível no WSL (`lsusb` mostra `0d28:0204`). Funciona no Windows também.
- `pyocd` instalado.
- Miniterm ou outro monitor serial em `/dev/ttyACM0`, 115200 8N1.
- O código imprime um log a cada toggle no formato:
  `LED A toggle t=<uptime em ms>` e `LED B toggle t=<uptime em ms>`.
- Cronômetro ou celular com gravação de vídeo (para os testes visuais).

## Convenções

- **Tolerância serial:** ±20 ms por intervalo (medido pelos timestamps de `k_uptime_get_32()`).
- **Tolerância visual:** ±0,5 s em 10 s de observação.
- **Aprovado** = todos os critérios do teste atendidos. Qualquer desvio = **Reprovado** (registrar o valor medido).

## Testes

### T1: Build limpo

- **Objetivo:** garantir que o projeto compila do zero.
- **Procedimento:**
  1. `west build -p auto -b frdm_kl25z`
- **Resultado esperado:** build termina sem erros e sem warnings do código da aplicação (`src/main.c`).
- **Critério:** código de saída 0.

### T2: Gravação

- **Objetivo:** garantir que o firmware é gravado na placa.
- **Procedimento:**
  1. `west flash -r pyocd`
- **Resultado esperado:** flash conclui sem erro e a placa reinicia sozinha.
- **Critério:** nenhuma mensagem de erro; LEDs começam a piscar após a gravação.

### T3: Mensagem de boot

- **Objetivo:** confirmar que a saída serial funciona.
- **Procedimento:**
  1. Abrir `python -m serial.tools.miniterm /dev/ttyACM0 115200`.
  2. Apertar o botão **reset** da placa.
- **Resultado esperado:** aparece a mensagem de início (`Iniciando`).
- **Critério:** mensagem visível em até 2 s após o reset.

### T4: Verificação visual

- **Objetivo:** confirmar que o comportamento físico bate com o log.
- **Procedimento:**
  1. Reset na placa.
  2. Observar (ou gravar em vídeo) por 10 s, contando mudanças de estado de cada LED.
- **Resultado esperado:** LED A muda de estado 10 vezes, LED B 20 vezes em 10 s.
- **Critério:** contagem dentro de ±1 toggle.

## Registro de execução

| Teste | Resultado (Aprovado/Reprovado) | Valor medido | Observações |
|-------|-------------------------------|--------------|-------------|
| T1 | | | |
| T2 | | | |
| T3 | | | |
| T4 | | | |

## Validação pelo par

O avaliador deve executar os testes acima, preencher a tabela de registro em um comentário do PR e registrar explicitamente que a validação foi realizada, mesmo que tudo passe.
