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
    aux = input("Continuar?\nS\tN\n-->")      
    if aux.lower() == "s":
        info()
def info():
    os.system('cls')
    aux = int(input("[1]Mega-Sena\t[2]Lotomania\n[3]Quina\t[4]Loto-fácil\n\n-->"))
    if aux == 1:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        nums = int(input("Quantos números escolher?\n-->"))
        if nums>5 and nums<21:
            loterias(nums=nums,surpresinhas=surpresinhas,min=1,max=60)
        else:
            print("#####Os números devem estar entre 6 e 20.####") 
            soninho() 
    if aux == 2:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        loterias(nums=50,surpresinhas=surpresinhas,min=0,max=99)
    if aux == 3:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        nums = int(input("Quantos números escolher?\n-->"))
        if nums>4 and nums<16:
            loterias(nums=nums,surpresinhas=surpresinhas,min=1,max=80)
        else:
            print("####Os números devem estar entre 5 e 15.####")
            soninho() 
    if aux == 4:
        surpresinhas = int(input("Quantas surpresinhas realizar?\n-->"))
        nums = int(input("Quantos números escolher?\n-->"))
        if nums>14 and nums<21:
            loterias(nums=nums,surpresinhas=surpresinhas,min=1,max=25)
        else:
            print("####Os números devem estar entre 15 e 20.####")
            soninho() 
info()
