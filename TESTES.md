# Plano de Testes — Pisca-LED com Threads (Zephyr)

Plano de testes para verificação do correto funcionamento do firmware de
piscar dois LEDs usando duas threads independentes (`src/main.c`), executado
na placa Freedom (FRDM-KL25Z) com Zephyr 4.2.

## Ambiente de teste

- **Placa:** Freedom FRDM-KL25Z
- **Zephyr:** versão 4.2
- **Conexão:** cabo USB (alimentação + serial)
- **Terminal serial:** `minicom` ou
  equivalente, configurado para a baud rate padrão do projeto (115200 bps)
- **Build:** `west build -b frdm_kl25z .`
- **Flash:** `west flash -r pyocd`

## Resumo do comportamento esperado

| Thread | LED | Periodicidade do toggle | Prioridade |
|---|---|---|---|
| `thread_blink_led_1000ms` | `led0` | 1000 ms | 5 |
| `thread_blink_led_500ms` | `led1` | 500 ms | 6 |

Cada toggle alterna o estado do LED (aceso ↔ apagado). Logo, cada LED
completa um ciclo visual completo (aceso + apagado) em 2× o período de
toggle: `led0` pisca a cada ~2000 ms, `led1` a cada ~1000 ms.

---

## Caso de Teste 1 — Boot e inicialização sem erros

**Objetivo:** verificar que os dois LEDs são corretamente inicializados.

**Procedimento:**
1. Compilar e gravar o firmware na placa.
2. Abrir o terminal serial antes de resetar a placa.
3. Resetar a placa (botão reset ou reconectar USB).

**Resultado esperado:**
- Nenhuma mensagem `Error: LED device ... is not ready` é impressa.
- Nenhuma mensagem `Error %d: failed to configure LED pin` é impressa.
- O firmware não trava nem reinicia em loop (sem mensagens de fault/crash).

---

## Caso de Teste 2 — LED0 pisca com período de 1000 ms

**Objetivo:** confirmar que `led0` alterna de estado a cada 1000 ms.

**Procedimento:**
1. Observar visualmente o LED0 por pelo menos 10 segundos.
2. Em paralelo, observar as mensagens `[... ms] Piscando LED (1000ms)!` no
   terminal serial.

**Resultado esperado:**
- O LED0 alterna aceso/apagado visivelmente, completando um ciclo
  (acende + apaga) a cada ~2 segundos.
- A cada mensagem `Piscando LED (1000ms)!` impressa, o LED0 muda de estado
  imediatamente em seguida.
- A diferença entre os timestamps (`k_uptime_get()`) de mensagens
  consecutivas dessa thread é de aproximadamente 1000 ms (tolerância
  sugerida: ±50 ms, considerando jitter do escalonador).
- Em 10 segundos de observação, aproximadamente 10 mensagens dessa thread
  são impressas.

---

## Caso de Teste 3 — LED1 pisca com período de 500 ms

**Objetivo:** confirmar que `led1` alterna de estado a cada 500 ms.

**Procedimento:** idêntico ao Caso de Teste 2, trocando `led0`/1000ms por
`led1`/500ms.

**Resultado esperado:**
- O LED1 alterna aceso/apagado visivelmente, completando um ciclo a cada
  ~1 segundo (piscada perceptivelmente mais rápida que o LED0).
- A diferença entre timestamps consecutivos da thread `blink_led_500ms` é
  de aproximadamente 500 ms (tolerância sugerida: ±50 ms).
- Em 10 segundos de observação, aproximadamente 20 mensagens dessa thread
  são impressas.

---

## Registro dos resultados

Para cada execução dos testes, registrar em comentário/issue da PR:

- Placa e ambiente utilizados.
- Data/hora do teste.
- Para cada caso de teste: **passou / falhou**, com observações
  (ex.: timestamps coletados, prints do terminal serial, vídeo/foto do LED
  piscando).
- Caso algum teste falhe, descrever o comportamento observado e divergência
  em relação ao esperado.
