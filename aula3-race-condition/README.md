# PSI-Microcontroladores2-Aula03

Atividade prática da aula 3 da disciplina Microcontroladores 2 (PSI): condições de corrida (*race conditions*) em RTOS.

## Prompt: Gostaria de aprender mais sobre teoria de RTOS / Zephyr. Tendo isso em vista, gere um código que mostra o problema de sincronismo de utilização de recursos compartilhados que leva a condição de corrida (Race Condition).

## Teoria: o que é uma Race Condition?

Uma **race condition** ocorre quando duas ou mais threads (ou uma thread e uma ISR) acessam um **recurso
compartilhado mutável** (uma variável global, uma estrutura, um periférico) sem sincronização adequada, e o
resultado final do programa passa a depender da **ordem/instante exato** em que essas execuções são
intercaladas pelo escalonador. Em sistemas com fontes de jitter (interrupções externas assíncronas, cache,
frequência de clock variável, múltiplos núcleos), essa ordem não é determinística, e o programa pode
funcionar corretamente em 999 execuções e falhar na 1000ª — o que torna esse tipo de bug notoriamente
difícil de reproduzir e depurar. Já em um sistema bare-metal bem controlado, com uma única fonte de
preempção periódica e nenhuma outra assincronia (como no exemplo desta aula), a sequência de trocas de
contexto pode ser perfeitamente **reprodutível** de um reset para o outro — o número de atualizações
perdidas se repete sempre igual. Isso não torna o acesso seguro: a causa raiz (ausência de exclusão mútua
sobre um recurso compartilhado) continua lá, e o comportamento deixa de ser reprodutível no instante em que
qualquer fonte de assincronia é adicionada ao sistema (um botão, uma segunda ISR, uma thread extra, etc.).

O caso clássico é o padrão **ler-modificar-escrever** (*read-modify-write*) sobre uma variável, por exemplo
`contador++`. Mesmo essa única linha de C não é uma operação atômica: o compilador a traduz em pelo menos
três instruções de máquina:

1. **LOAD** — ler o valor atual de `contador` da memória para um registrador;
2. **ADD** — somar 1 ao valor no registrador;
3. **STORE** — escrever o registrador de volta na memória.

Se a thread A for preemptada (por uma interrupção de tick do sistema, por uma IRQ de periférico, ou por
*timeslicing* entre threads de mesma prioridade) **entre os passos 1 e 3**, e a thread B executar o mesmo
`contador++` nesse intervalo, as duas threads terão lido o **mesmo valor antigo**. Quando A retomar a
execução e escrever seu resultado, ela sobrescreve o que B escreveu — um incremento inteiro **desaparece**.
Esse fenômeno é chamado de **lost update** (atualização perdida).

A região de código que manipula o recurso compartilhado e que precisa ser executada de forma indivisível
chama-se **seção crítica**. A técnica geral para resolver o problema é garantir **exclusão mútua**: apenas
uma thread pode estar dentro da seção crítica por vez. O Zephyr oferece várias ferramentas para isso, cada
uma com um custo e um escopo de uso diferente:

| Mecanismo | API no Zephyr | Quando usar |
|---|---|---|
| Mutex | `k_mutex_lock()` / `k_mutex_unlock()` | Seção crítica entre **threads**, pode ser longa, suporta *priority inheritance* (evita inversão de prioridade) |
| Semáforo binário | `k_sem_take()` / `k_sem_give()` | Sincronização/sinalização entre threads (ou thread/ISR); não tem noção de "dono" como o mutex |
| Spinlock | `k_spinlock` | Seções críticas muito curtas, inclusive acessadas por ISR, e em SMP |
| Operações atômicas | `atomic_t`, `atomic_inc()`, `atomic_cas()` | Contadores/flags simples, sem precisar bloquear a thread |
| Desabilitar interrupções | `irq_lock()` / `irq_unlock()` | Seção crítica ínfima que precisa ficar imune até a ISRs (usar com extrema parcimônia) |
| Desabilitar escalonador | `k_sched_lock()` / `k_sched_unlock()` | Impede preempção por outra thread, mas ISRs continuam rodando |

Importante: **mutex não serve para sincronizar thread com ISR** (uma ISR não pode bloquear esperando um
mutex). Para esse caso, use semáforo, spinlock ou operação atômica.

## Anatomia do exemplo (`src/main.c`)

O programa cria duas threads (`thread_a`, `thread_b`) de **mesma prioridade**, cada uma incrementando
`NUM_INCREMENTS` vezes um contador global `shared_counter`, através da função `increment_shared_counter()`,
que explicita os três passos ler → processar → escrever:

```c
uint32_t temp = shared_counter;       // 1. LER
k_busy_wait(CRITICAL_SECTION_DELAY_US); // 2. "processar" o valor lido
temp = temp + 1;
shared_counter = temp;                // 3. ESCREVER
```

O `k_busy_wait()` entre a leitura e a escrita **alarga artificialmente** a janela de vulnerabilidade. O bug
já existe sem ele (qualquer `contador++` desprotegido já é uma race condition em potencial), mas, numa CPU
rápida executando poucas instruções entre o LOAD e o STORE, pode levar muitas repetições até que um tick de
interrupção caia exatamente nesse intervalo estreito. Alargar a janela é uma técnica legítima e muito usada
para tornar um bug de concorrência **observável de forma confiável** em uma demonstração curta, em vez de
depender de sorte.

Ao final, `main()` usa `k_thread_join()` para esperar as duas threads terminarem e compara o valor final de
`shared_counter` com o valor esperado (`NUM_THREADS * NUM_INCREMENTS`), reportando quantos incrementos foram
perdidos.

A macro `USE_MUTEX` no topo do arquivo liga/desliga a proteção por `k_mutex_lock()`/`k_mutex_unlock()` em
torno da seção crítica — compare os dois modos.

## Como reproduzir

```bash
# Modo inseguro (USE_MUTEX 0) - comportamento default do arquivo
west build -p auto -b <placa> aula3-race-condition
west flash
# acompanhar pela serial (ex.: python -m serial.tools.miniterm /dev/ttyACM0 115200)
```

Repita a execução (reset) algumas vezes. Note que:
- o valor final de `shared_counter` é **menor** que o esperado;
- nesta placa, com este firmware, o déficit tende a se **repetir com o mesmo valor** a cada reset. Isso não
  significa que o bug deixou de ser uma race condition: significa que, neste ambiente controlado, não há
  nenhuma fonte extra de jitter (sem IRQ externa assíncrona, `k_busy_wait` com duração fixa, mesmo tick de
  sistema, mesma prioridade) — logo a sequência de trocas de contexto entre `thread_a` e `thread_b` é
  praticamente idêntica a cada execução, e por isso o número de atualizações perdidas também se repete. A
  causa (acesso não atômico e desprotegido) é a mesma de sempre; o que varia é só o quão determinístico o
  *sintoma* aparenta ser, dependendo de quantas fontes de jitter existem no sistema.

Depois, edite `USE_MUTEX` para `1`, recompile e repita: o resultado deve ser `OK` em todas as execuções,
porque agora o acesso a `shared_counter` é mutuamente exclusivo.

> Também é possível rodar este exemplo sem placa física para uma primeira verificação rápida, usando um
> board emulado, por exemplo: `west build -p auto -b native_sim aula3-race-condition && west build -t run`.

## Perguntas para reflexão

1. Em uma placa real, sem nenhuma outra interrupção assíncrona rodando, o número de atualizações perdidas
   costuma se **repetir identicamente** a cada reset, em vez de variar. Por quê? O que precisaria existir no
   sistema (ex.: outra fonte de interrupção, variação de tempo, entrada externa) para esse número começar a
   variar entre execuções?
2. O que aconteceria se `thread_a` e `thread_b` tivessem prioridades **diferentes**? A race condition
   desapareceria? Por quê?
3. Aumente ou diminua `CRITICAL_SECTION_DELAY_US` e repita os testes. Como esse valor se relaciona com a
   frequência de ocorrência do bug?
4. Por que `volatile` em `shared_counter` não resolve o problema, mesmo impedindo o compilador de otimizar o
   acesso à variável?
5. Qual seria o efeito de usar `k_sched_lock()`/`k_sched_unlock()` em vez de um mutex aqui? E de usar
   `atomic_inc()` no lugar de toda a seção crítica?
6. Se em vez de uma segunda thread o incremento concorrente viesse de uma **ISR**, o mutex ainda seria a
   ferramenta certa? Justifique.
