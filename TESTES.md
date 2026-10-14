# Planejamento de Testes: Atividade Baremetal

Placa: FRDM-KL25Z | Zephyr 4.2 | Branch: `baremetal`

## Definições adotadas (leia antes de testar)

O enunciado não define "piscar a cada X". Este plano adota:

- **"Piscar a cada T"** = o LED **muda de estado (toggle) a cada T**. Ou seja, um ciclo completo (aceso + apagado) dura 2T.
- **LED A** = `led0` do devicetree: toggle a cada **1000 ms** (ciclo completo de 2 s).
- **LED B** = `led1` do devicetree: toggle a cada **500 ms** (ciclo completo de 1 s).
- **Desafio:** LED B com toggle a cada **350 ms**, LED A continua a cada 1000 ms.

Se o professor definir "piscar" como ciclo completo de T, divida os intervalos esperados por 2 (A = 500 ms, B = 250 ms).

## Pré-requisitos

- Placa conectada e visível no WSL (`lsusb` mostra `0d28:0204`).
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
  1. `west build -p auto`
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
- **Resultado esperado:** aparece a mensagem de início (`Iniciando`) seguida dos logs de toggle.
- **Critério:** mensagem visível em até 2 s após o reset.

### T4: LED A a cada 1 s (serial)

- **Objetivo:** verificar o período do LED A.
- **Procedimento:**
  1. Com o miniterm aberto, capturar pelo menos 10 linhas `LED A toggle`.
  2. Calcular a diferença entre timestamps consecutivos.
- **Resultado esperado:** cada intervalo = 1000 ms.
- **Critério:** todos os intervalos entre 980 ms e 1020 ms.

### T5: LED B a cada 0,5 s (serial)

- **Objetivo:** verificar o período do LED B.
- **Procedimento:** igual ao T4, com 20 linhas `LED B toggle`.
- **Resultado esperado:** cada intervalo = 500 ms.
- **Critério:** todos os intervalos entre 480 ms e 520 ms.

### T6: Relação entre os LEDs

- **Objetivo:** confirmar que B é duas vezes mais rápido que A.
- **Procedimento:**
  1. Capturar 10 s de log.
  2. Contar os toggles de cada LED.
- **Resultado esperado:** LED A ≈ 10 toggles, LED B ≈ 20 toggles em 10 s.
- **Critério:** B tem o dobro de toggles de A (±1).

### T7: Verificação visual

- **Objetivo:** confirmar que o comportamento físico bate com o log.
- **Procedimento:**
  1. Reset na placa.
  2. Observar (ou gravar em vídeo) por 10 s, contando mudanças de estado de cada LED.
- **Resultado esperado:** LED A muda de estado 10 vezes, LED B 20 vezes em 10 s.
- **Critério:** contagem dentro de ±1 toggle.

### T8: Reinício após reset

- **Objetivo:** garantir que o padrão reinicia corretamente.
- **Procedimento:**
  1. Deixar rodando por 10 s.
  2. Apertar reset.
  3. Observar por mais 10 s.
- **Resultado esperado:** ambos os LEDs retomam o padrão do T6 e o log reinicia com `Iniciando`.
- **Critério:** mesmos resultados do T6 após o reset.

### T9: Estabilidade

- **Objetivo:** verificar ausência de travamento e deriva.
- **Procedimento:**
  1. Deixar a placa ligada por 5 minutos com o log aberto.
  2. Comparar os 10 últimos intervalos com os 10 primeiros.
- **Resultado esperado:** sem travamento; intervalos continuam dentro da tolerância.
- **Critério:** nenhum intervalo fora da tolerância dos T4 e T5.

### T10 (Desafio): LED B a cada 350 ms

- **Pré-condição:** código do desafio gravado (LED A = 1000 ms, LED B = 350 ms).
- **Objetivo:** verificar o período não múltiplo.
- **Procedimento:**
  1. Capturar pelo menos 20 linhas `LED B toggle` e 10 de `LED A toggle`.
  2. Calcular os intervalos de cada LED.
- **Resultado esperado:** B = 350 ms, A = 1000 ms, sem que um interfira no outro.
- **Critério:** B entre 330 ms e 370 ms; A entre 980 ms e 1020 ms.

## Registro de execução

| Teste | Resultado (Aprovado/Reprovado) | Valor medido | Observações |
|-------|-------------------------------|--------------|-------------|
| T1 | | | |
| T2 | | | |
| T3 | | | |
| T4 | | | |
| T5 | | | |
| T6 | | | |
| T7 | | | |
| T8 | | | |
| T9 | | | |
| T10 | | | |

## Validação pelo par

O avaliador deve executar os testes acima, preencher a tabela de registro em um comentário do PR e registrar explicitamente que a validação foi realizada, mesmo que tudo passe.
