import random
import os
from time import sleep
random.seed()
def soninho():
    sleep(5)
    info()
def loterias(nums:int,surpresinhas:int,min:int,max:int):
    for i in range(surpresinhas):
        x = []
        while len(x) != nums:
            aux = random.randint(min,max)
            if aux not in x:
                x.append(aux)
        y = sorted(x)
        print(y)
def info():
    precos = {"Mega Sena":[0.0,0.0,0.0,0.0,0.0,4.5,31.5,126.0,378.0,945.0,2079.0,4158.0,7722.0,13513.5,22522.5,36036.0,55692.0,83538.0,122094.0,174420.0],"Quina":[0.0,0.0,0.0,0.0,2.0,12.0,42.0,112.0,252.0,504.0,924.0,1584.0,2574.0,4004.0,6006.0],"Loto fácil":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,2.5,40.0,340.0,2040.0,9690.0,38760.0]}
    os.system('cls')
    aux = int(input("[1]Mega-Sena\t[2]Lotomania\n[3]Quina\t[4]Loto-fácil\n\n-->"))
    if aux == 1:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        nums = int(input("Quantos números escolher?\n-->"))
        if nums>5 and nums<21:
            loterias(nums=nums,surpresinhas=surpresinhas,min=1,max=60)
            print(f"O preço total é de: {precos['Mega Sena'][nums-1]*surpresinhas:,}$")
        else:
            print("#####Os números devem estar entre 6 e 20.####") 
            soninho() 
    if aux == 2:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        loterias(nums=50,surpresinhas=surpresinhas,min=0,max=99)
        print(f"O preço total é de: {surpresinhas*2.5:,}$")
    if aux == 3:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        nums = int(input("Quantos números escolher?\n-->"))
        if nums>4 and nums<16:
            loterias(nums=nums,surpresinhas=surpresinhas,min=1,max=80)
            print(f"O preço total é de:{precos['Quina'][nums-1]*surpresinhas:,}$")
        else:
            print("####Os números devem estar entre 5 e 15.####")
            soninho() 
    if aux == 4:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        nums = int(input("Quantos números escolher?\n-->"))
        if nums>14 and nums<21:
            loterias(nums=nums,surpresinhas=surpresinhas,min=1,max=25)
            print(f"O preço total é de: {precos['Loto fácil'][nums-1]*surpresinhas:,}$")
        else:
            print("####Os números devem estar entre 15 e 20.####")
            soninho() 
    aux = input("Continuar?\nS\tN\n-->")      
    if aux.lower() == "s":
        info()
info()
