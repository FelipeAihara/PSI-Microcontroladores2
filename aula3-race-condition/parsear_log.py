import sys

# Recebe o nome do log (dar uma olhada no formato do log contido nessa pasta). Devolve um dicionário 
# com o nome das threads (chaves) e os intervalos de tempo que ela rodou (valor) 
def parsear_log(nome_log):
    threads = []
    intervalos = [] 
    
    with open(nome_log, "r") as f:
        linhas = f.readlines()
        n_log = "Nome: "
        i_log = "Tempo do início: "
        f_log = "Tempo do fim: "
        d_log = "Tempo de duração: "
        i = 8
        
        # Itera por todos os blocos do log. Separa o nome, 
        # tempo de inicio e tempo de fim de cada bloco
        while i < 32:
            linha_nome = linhas[i]
            linha_inicio = linhas[i+1]
            linha_fim = linhas[i+2]
            idx_nome = linha_nome.index(n_log) + len(n_log)
            idx_inicio = linha_inicio.index(i_log)+len(i_log)
            idx_fim = linha_fim.index(f_log)+len(f_log)

            nome = linha_nome[idx_nome:linha_nome.index("\n")]
            inicio = float(linha_inicio[idx_inicio:linha_inicio.index(" us")])
            fim = float(linha_fim[idx_fim:linha_fim.index(" us")])
            intervalo = [inicio, fim]
            
            if nome not in threads:
                threads.append(nome)
                intervalos.append([intervalo])

            else:
                intervalos[threads.index(nome)].append(intervalo)

            i += 3
        
        d = {}
        i = 0
        while i < len(threads):
            d[threads[i]] = intervalos[i]
            i += 1
        
        print(d)
        return d

def main():
    d = parsear_log(sys.argv[1])
    print(d)

if __name__ == "__main__":
    main()


