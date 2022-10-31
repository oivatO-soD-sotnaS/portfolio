import os

def user_info():
    name = input("Digite o nome COMPLETO do convidado:\n")
    classe = input("Digite a classe:\n")
    os.system('cls')
    return name,classe
class Festa:
    lista_convidados = {}

    def add_person(name,classe):
        name = name.title()
        classe = classe.title()
        if classe not in Festa.lista_convidados:
            if name not in Festa.lista_convidados.values():
                Festa.lista_convidados[classe] = []
                Festa.lista_convidados[classe].append(name)
        elif name not in Festa.lista_convidados.values():
                Festa.lista_convidados[classe].append(name)
        interface()
    def remove_person(name,classe):
        name = name.title()
        classe = classe.title()
        Festa.lista_convidados[classe].remove(name)
        interface()
def show_list():
    os.system('cls')
    for i in Festa.lista_convidados:
            print("_{:^32}_".format(i))
            for x in Festa.lista_convidados[i]:
                print(x)
            print("\n\n")
    interface()        
def interface():
    real = input("Adicionar pessoa[1]\nRetirar pessoa[2]\nMostrar lista de convidados[3]\n*resposta*--> ")
    if real == '1':
        os.system('cls')
        name,classe = user_info()
        Festa.add_person(name=name,classe=classe)
    elif real == "2":
        os.system('cls')
        name,classe = user_info()
        Festa.remove_person(name=name,classe=classe)
    elif real == "3":
        os.system('cls')
        show_list()
interface()
