import sys

import matplotlib.pyplot as plt

from parsear_log import parsear_log


def plotar_diagrama(intervalos: dict[str, list[tuple[float, float]]],
                     nome_diagrama: str,
                     titulo: str = "Execução das Threads",
                     unidade_tempo: str = "us") -> None:
    fig, ax = plt.subplots(figsize=(10, 0.6 * len(intervalos) + 1))

    threads = list(intervalos.keys())
    cores = plt.cm.tab20.colors

    for i, thread in enumerate(threads):
        barras = [(inicio, fim - inicio) for inicio, fim in intervalos[thread]]
        ax.broken_barh(barras, (i - 0.4, 0.8), facecolors=cores[i % len(cores)])

    ax.set_yticks(range(len(threads)))
    ax.set_yticklabels(threads)
    ax.set_xlabel(f"Tempo ({unidade_tempo})")
    ax.set_title(titulo)
    ax.grid(True, axis="x", linestyle="--", alpha=0.5)

    plt.tight_layout() 
    plt.savefig(nome_diagrama) 
    plt.show()


def main():
    nome_log = sys.argv[1]
    dados = parsear_log(nome_log)
    nome_diagrama = nome_log[:nome_log.index(".txt")] + ".png"
    plotar_diagrama(dados, nome_diagrama)


if __name__ == "__main__":
    main()
