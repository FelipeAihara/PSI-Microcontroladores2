# Planejamento de Testes: Race Condition

Placa: FRDM-KL25Z (ou `native_sim`) | Branch: `race-condition`

### T1: Build limpo

- **Objetivo:** garantir que o projeto compila do zero, nos dois modos.
- **Procedimento:**
  1. Com `USE_MUTEX 0` em `src/main.c`: `west build -p auto -b frdm_kl25z aula3-race-condition`
  2. Alterar para `USE_MUTEX 1`, repetir o build.
- **Resultado esperado:** build termina sem erros em ambos os modos.
- **Critério:** código de saída 0 nas duas compilações.

### T2: Gravação e execução

- **Objetivo:** garantir que o firmware roda na placa e produz saída serial.
- **Procedimento:**
  1. `west flash -r pyocd`
  2. Abrir `python -m serial.tools.miniterm /dev/ttyACM0 115200`
  3. Resetar a placa.
- **Resultado esperado:** o cabeçalho (`=== Demonstracao de Race Condition ===`) e as mensagens de término
  de cada thread aparecem no terminal.
- **Critério:** nenhuma mensagem de erro/crash (ex.: fault, stack overflow); programa termina imprimindo
  `RESULTADO: ...`.

### T3: Reprodução da race condition (modo inseguro, `USE_MUTEX 0`)

- **Objetivo:** confirmar que o bug é observável e não-determinístico.
- **Procedimento:**
  1. Resetar a placa e registrar o valor final do contador e o número de atualizações perdidas.
  2. Repetir o reset pelo menos 5 vezes.
- **Resultado esperado:** em pelo menos uma das execuções, `RESULTADO: FALHA`, com um número de atualizações
  perdidas diferente de zero. O número perdido pode variar entre execuções.
- **Critério:** pelo menos 1 de 5 execuções apresenta perda; se nenhuma apresentar, aumentar
  `CRITICAL_SECTION_DELAY_US` e repetir.

### T4: Correção pelo mutex (`USE_MUTEX 1`)

- **Objetivo:** confirmar que a sincronização elimina o problema.
- **Procedimento:**
  1. Alterar `USE_MUTEX` para `1`, recompilar e gravar.
  2. Resetar a placa pelo menos 5 vezes, registrando o resultado de cada execução.
- **Resultado esperado:** `RESULTADO: OK` em 100% das execuções, com o contador final sempre igual a
  `NUM_THREADS * NUM_INCREMENTS`.
- **Critério:** 0 atualizações perdidas em todas as repetições.

### T5: Sensibilidade ao tamanho da janela crítica

- **Objetivo:** relacionar `CRITICAL_SECTION_DELAY_US` com a frequência da falha.
- **Procedimento:**
  1. Com `USE_MUTEX 0`, testar com `CRITICAL_SECTION_DELAY_US` em 0, 10 e 100.
  2. Para cada valor, repetir o reset 3 vezes e anotar se houve perda e quanto.
- **Resultado esperado:** quanto maior o delay, maior a probabilidade/magnitude da perda observada.
- **Critério:** tendência clara de aumento da perda com o aumento do delay (não precisa ser monotônico
  execução a execução, mas a tendência deve aparecer na média).

## Registro de execução

| Teste | Resultado (Aprovado/Reprovado) | Observações |
|-------|-------------------------------|--------------|
| T1 | | |
| T2 | | |
| T3 | | |
| T4 | | |
| T5 | | |

## Validação pelo par

O avaliador deve executar os testes acima, preencher a tabela de registro em um comentário do PR e registrar
explicitamente que a validação foi realizada, mesmo que tudo passe.
