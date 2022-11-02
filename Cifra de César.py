import string
from time import sleep
import os

alphabet = list(string.ascii_lowercase)



def info_needed(funcao):
    def wrapper():
        frase = str(input("Digite a frase que deve ser ENCRIPTADA/DESCRIPTADA:\n-->"))
        chave = int(input("Digite a chave:\n-->"))
        os.system('cls')
        funcao(frase=frase,chave=chave)
    return wrapper
@info_needed
def encriptacao(frase: str, chave:int) -> str:
    new_frase = []
    frase = frase.replace(" ","")
    for i in frase:
        if alphabet.index(i)+chave > 25:
            y = (alphabet.index(i)+chave)//26
            x = alphabet.index(i)+chave
            new_frase.append(alphabet[x-y*26])
        else:
            new_frase.append(alphabet[alphabet.index(i)+chave])
    print("".join(new_frase))
    sleep(3)
    os.system('cls')
@info_needed
def descriptacao(frase: str, chave:int) -> str:
    new_frase = []
    frase = frase.replace(" ","")
    for i in frase:
        if alphabet[::-1].index(i)+chave > 25:
            y = (alphabet[::-1].index(i)+chave)//26
            x = alphabet[::-1].index(i)+chave
            new_frase.append(alphabet[::-1][x-y*26])
        else:
            new_frase.append(alphabet[::-1][alphabet.index(i)+chave])
    print("".join(new_frase))
    sleep(3)
    os.system('cls')
def interface():
    ans = input("Encriptar[1]\tDescriptar[2]\nResposta: ")
    if ans == "1":
        encriptacao()
    elif ans == "2":
        descriptacao()
    else:
        print("Opcao nao encontrada.")
        sleep(3)
        os.system('cls')
while True:
    interface()
