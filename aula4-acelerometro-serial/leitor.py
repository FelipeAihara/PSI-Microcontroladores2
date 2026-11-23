import serial
import csv
import time
import sys

# ================= CONFIGURAÇÕES =================
LOG_TXT = 'log.txt'
ARQUIVO_CSV = 'dados_cinematicos.csv'
# =================================================

def iniciar_leitura():
    with open(LOG_TXT, "r") as f:
        linhas = f.readlines()
        with open(ARQUIVO_CSV, mode='w', newline='') as arquivo:
            escritor_csv = csv.writer(arquivo)
            
            cabecalho_lido = False

            for linha in linhas:
                    dados = linha.split(',')
                    
                    if not cabecalho_lido and len(dados) == 9:
                        escritor_csv.writerow(dados)
                        print("Cabeçalho identificado e gravado:", dados)
                        cabecalho_lido = True
                    elif cabecalho_lido and len(dados) == 9:
                        escritor_csv.writerow(dados)
                        print(f"Dado salvo: {dados}")
                        
if __name__ == "__main__":
    iniciar_leitura()
