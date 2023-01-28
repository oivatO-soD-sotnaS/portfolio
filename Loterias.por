programa
{
	inclua biblioteca Util --> u
	inteiro surpresinhas
	inteiro num_numeros
	funcao inicio()
	{
		inteiro valor
		escreva("[1] Mega-Sena\t[2]Lotomania\n[3]Quina\t[4]Loto-fácil\n\n-->")
		leia(valor)
		escolha (valor)
		{
		caso 1:		
		limpa()
		escreva("Quantas surpresinhas criar?\n-->")
		leia(surpresinhas)
		escreva("Quantos números marcar?\n-->")
		leia(num_numeros)
		se(num_numeros<6 ou num_numeros>20){
			escreva("A quantidade de números a serem marcados deve estar entre 6 e 20.")
			u.aguarde(3000)
			limpa()
			inicio()
		}senao{
		mega_sena(num_numeros)}
		caso 2:		
		limpa()
		escreva("Quantas surpresinhas criar?\n-->")
		leia(surpresinhas)
		lotomania()

		caso 3:		
		limpa()
		escreva("Quantas surpresinhas criar?\n-->")
		leia(surpresinhas)
		escreva("Quantos números marcar?\n-->")
		leia(num_numeros)
		se(num_numeros<5 ou num_numeros>15){
			escreva("A quantidade de números a serem marcados deve estar entre 5 e 15.")
			u.aguarde(3000)
			limpa()
			inicio()
		}senao{
		quina(num_numeros)}
          caso 4:		
		limpa()
		escreva("Quantas surpresinhas criar?\n-->")
		leia(surpresinhas)
		escreva("Quantos números marcar?\n-->")
		leia(num_numeros)
		se(num_numeros<15 ou num_numeros>20){
			escreva("A quantidade de números a serem marcados deve estar entre 15 e 20.")
			u.aguarde(3000)
			limpa()
			inicio()
		}senao{
		loto_facil(num_numeros)}

          caso contrario:
          limpa()
          pare
		}
		
	}
	funcao mega_sena(inteiro nums)
	{
	inteiro cont
	real preco[20] = {0.0,0.0,0.0,0.0,0.0,4.5,31.5,126.0,378.0,945.0,2079.0,4158.0,7722.0,13513.5,22522.5,36036.0,55692.0,83538.0,122094.0,174420.0}
	para(inteiro x = 0;x<surpresinhas;x++)
	{
		inteiro lista[20]
		lista[nums-1] = -1
		sorteio(nums,60,lista)
	}
	escreva("O preço a ser pago é de: ",surpresinhas*preco[nums-1]+"$")
	escreva("\n\n[1]continuar\n-->")
	leia(cont)
	escolha(cont)
	{
		caso 1:
		limpa()
		inicio()

	}
	}
	funcao lotomania()
	{
	inteiro cont
	para(inteiro x = 0;x<surpresinhas;x++)
	{
		inteiro lista[50]
		lista[49] = -1
		sorteio(50,99,lista)
	}
	escreva("O preço a ser pago é de: ",surpresinhas*2.5+"$")
	escreva("\n\n[1]continuar\n-->")
	leia(cont)
	escolha(cont)
	{
		caso 1:
		limpa()
		inicio()

	}
	}
	funcao quina(inteiro nums)
	{
	inteiro cont
	real preco[15] = {0.0,0.0,0.0,0.0,2.0,12.0,42.0,112.0,252.0,504.0,924.0,1584.0,2574.0,4004.0,6006.0}
	para(inteiro x = 0;x<surpresinhas;x++)
	{
		inteiro lista[15]
		lista[nums-1] = -1
		sorteio(nums,80,lista)
	}
	escreva("O preço a ser pago é de: ",surpresinhas*preco[nums-1]+"$")
	escreva("\n\n[1]continuar\n-->")
	leia(cont)
	escolha(cont)
	{
		caso 1:
		limpa()
		inicio()

	}
	}
	funcao loto_facil(inteiro nums)
	{
     inteiro cont
     real preco[20] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,2.5,40.0,340.0,2040.0,9690.0,38760.0}
     para(inteiro x = 0;x<surpresinhas;x++)
	{
		inteiro lista[20]
		lista[nums-1] = -1
		sorteio(nums,25,lista)
	}
	escreva("O preço a ser pago é de: ",surpresinhas*preco[nums-1]+"$")
	escreva("\n\n[1]continuar\n-->")
	leia(cont)
	escolha(cont)
	{
		caso 1:
		limpa()
		inicio()

	}
	}
	funcao sorteio(inteiro nums,inteiro dezenas,inteiro lista[])
	{
	inteiro aux = 0
	inteiro aux2 = 0
	inteiro posicao = 0 
	enquanto(lista[nums-1] == -1){
		aux2 = 0
		aux = u.sorteia(0, dezenas)
		
		para(inteiro y = 0;y<nums;y++){
			se(lista[y] == aux){
			aux2 = 1}
		}
		se(aux2 == 0){
			lista[posicao] = aux
			posicao++
		}
	}
	organiza(lista,nums)
	}
	funcao organiza(inteiro lista[],inteiro tam)
	{
	para(inteiro j = 1; j <= tam; j++){
      para(inteiro i = 0; i < tam - 1; i++){
        se(lista[i] > lista[i+1]){
          inteiro copia = lista[i]
          lista[i] = lista[i+1]
          lista[i+1] = copia
        }
      }
    }
    para(inteiro x = 0;x<tam;x++)
    {
    	escreva("-",lista[x],"-")
    }
    escreva("\n")
	}
}
