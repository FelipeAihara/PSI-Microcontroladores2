# PSI-Microcontroladores2-Aula02

Atividade prática inicial da aula 2 da disciplina Microcontroladores 2 (PSI).

## Notas

- para fazer o log das threads, eu modifiquei a função z_sched_usage_stop (zephyr/kernel/usage.c:102). Ela sempre roda imediatamente antes de uma thread
parar de executar e tem a informação de quando a thread começou a rodar, tornando-a a função apropriada para o exercício em questão 
- para gerar o grafico, rodar: python3 plotar_grafico.py logging_{CASO}.txt

## Perguntas e Respostas

1. Utilize o Systick  para medir o tempo de cada thread e faça um diagrama temporal da execução do código fornecido para diferentes casos de prioridade 
e tempos (`k_sleep()`) e explique cada caso. 
2. O que acontece se removermos o `k_sleep()` de uma das threads, explique? Se as threads têm prioridades iguais, qual será executada primeiro?
Como funciona threads cooperativas (prioridade -1), explique?
3. É possível que uma thread nunca seja executada? Em qual combinação de prioridade/tempo isso acontece? Como é conhecido isso?

Caso 1 - PRIO_THREAD_A < PRIO_THREAD_B: notamos que, pelo fato da A thread ter maior prioridade para executar (que significa nível de prioridade 
menor no Zephyr), ela preempta a thread B periodicamente. Assim, como a thread A é relativamente rápida (não impede a execução da thread B), 
os requisitos temporais desse programa são cumpridos (nenhuma thread deixa de ser executada nos tempos especificados).

Caso 2 - PRIO_THREAD_A > PRIO_THREAD_B: nesse caso, os requisitos temporais do programa não são cumpridos. Isso fica claro no gráfico. A princípio, a
thread A deveria rodar a cada 1.5s. Entretanto, isso não ocorre. Para entender o porquê disso, é necessário entender como o escalonador do 
Zephyr funciona. Quando o timer do k_msleep da thread A expira, ocorre uma interrupção que marca a thread A como pronta (mesmo que a thread B estivesse
rodando antes, já que interrupções têm prioridades maiores que threads). Logo após essa interrupção, o escalonador é chamado para ver qual thread deve 
rodar. Como a thread B tem maior prioridade, apesar da thread A estar pronta, ela não é chamada.

Caso 3 - PRIO_THREAD_A = PRIO_THREAD_B: quando a prioridade da thread A é igual à prioridade da thread B, algo fascinante ocorre: quando ambas estão
prontas, elas dividem o tempo que ocupam o processador. Isso fica claro no diagrama (pegue, por exemplo, a segunda execução da thread A: ao
contrário do que ocorre no caso 1, ela não é executada de uma vez: ela começa a executar, depois a thread B preempta ela, e só depois ela finaliza sua
execução). O mecanismo pelo qual isso ocorre é muito sutil. Quando duas threads de mesma prioridade estão prontas para executar, o escalonador decide
qual delas deveria rodar por meio do timeslicing. Isto é: primeiro, o escalonador deixa uma das threads (a que foi definida primeiro) rodar por um certo
período de tempo. Quando esse período expira, o escalonador então dá o controle à outra thread e assim por diante. Vale notar que o período em questão é 
definido no símbolo CONFIG_TIMESLICE_SIZE do Kconfig. Indo no meu arquivo build/zephyr/.config, encontro: CONFIG_TIMESLICE_SIZE=20, que é exatamente a 
quantidade de tempo que a thread A roda antes de ser preemptada pela thread B. É possível ser isso no log:

[00:00:00.020,000] <inf> os: Nome: a_tid
[00:00:00.020,000] <inf> os: Tempo do início: 697.02 us
[00:00:00.020,000] <inf> os: Tempo do fim: 20688.71 us
[00:00:00.020,000] <inf> os: Tempo de duração: 19858.21 us <- Aqui, 20ms!  

Caso 4 - Removendo o k_sleep da thread A: quando removemos o printk da thread A, nenhum log aparece no terminal. Isso ocorre porque, sem o k_msleep,
a thread A nunca cede a CPU, o que faz com que as outras threads (como a de logging, que é a responsável por enviar os logs para o terminal) nunca
tenham a chance de rodar. Isso é conhecido como inanição: quando uma ou mais threads deixam de rodar porque outras monopolizam a CPU. Vale notar que isso
só ocorre porque a thread A tem a maior prioridade entre todas as threads prontas para executar. Se houvesse uma outra thread de prioridade maior ou 
igual à thread A, essa outra thread dividiria a CPU com a thread A. 

- OBS.: threads cooperativas são threads que não podem ser preemptadas: elas têm que ativamente ceder o controle da CPU para pararem de serem
executadas - elas têm que ser cooperativas para que as outras threads possam rodar.
   
4. O que acontece com uma interrupção de hardware (ISR)? Implemente um botão (Botão com Interrupção) com interrupção para mostrar o comportamento 
e prioridade da ISR.

Implementando o botão, observamos que a ISR interrompe a thread B (a saber, ela tem prioridade maior que qualquer thread). 

5. Substitua os comandos de printk por comandos com Logging. Inclua mais informações (como os tempos intermediários do timer) que podem ser utilizados 
para depuração do código. Discuta a diferença entre usar o Logging, printk, printf e debug.

A principal diferença de printf e printk é que o printk é uma versão do Zephyr mais leve do printf. A principal diferença entre o printk e o logging é
que este tem várias outras opções que o printk não tem - a saber: níveis de severidade, timestamp e deferred mode (a emissão das mensagens é feita
em um thread separada). Já o debug é algo completamente diferente: ele serve para pausar a execução de verdade e inspecionar o estado do MCU.
