import string

alphabet = list(string.ascii_lowercase)



def cesar_info():
    frase = input("Digite a frase à ser encriptada/descriptada:\n")
    chave = int(input("Digite a chave:\n"))
    return frase,chave
def encriptacao():
    frase, chave = cesar_info()
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
    interface()

def descriptacao():
    frase, chave = cesar_info()
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
    interface()
    
def interface():
    ans = input("Encriptar[1]\tDescriptar[2]\nResposta: ")
    if ans == "1":
        encriptacao()
    elif ans == "2":
        descriptacao()
    else:
        print("Opcao nao encontrada.")
        interface()
interface()
