programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti

	cadeia alfabeto[26] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	cadeia alfabeto_AC[26] = {"z","y","x","w","v","u","t","s","r","q","p","o","n","m","l","k","j","i","h","g","f","e","d","c","b","a"}
	inteiro chave = 0

	cadeia frase
	
	funcao inicio()
	{
         escreva("ENCRIPTAR[1] ou DESCRIPTAR[2]\n-->")
         leia(chave)
	    se(chave == 1){
		    escreva("Qual a frase a ser criptografada?\n-->")
		    leia(frase)

		    escreva("Qual a chave desejada?\n-->")
		    leia(chave)
	         criptografar(frase,chave)
	    }
         senao se(chave == 2){
              escreva("Qual a frase a ser descriptografada?\n-->")
		    leia(frase)

		    escreva("Qual a chave desejada?\n-->")
		    leia(chave)
		    descriptografar(frase,chave)
         }
		
	}

	funcao vazio criptografar(cadeia frase, inteiro chave){
		
		inteiro numeroLetras = t.numero_caracteres(frase)

		escreva("a frase tem ", numeroLetras, " letras. \n")

		para(inteiro i=0; i < numeroLetras; i++){
			
			caracter letra = t.obter_caracter(frase, i)
			cadeia letraConvertida = ti.caracter_para_cadeia(letra)
			
			//em qual posicao do alfabeto está essa letra?
			para(inteiro j=0; j < 26; j++){

				se(letraConvertida == alfabeto[j]){
					//escreva("a letra ", letraConvertida, " está na posicao ", j, "\n")

					inteiro posicaoCriptografada = j + chave

					//garantir que se a posicao passar do Z, volte para o inicio do alfabeto
					posicaoCriptografada = posicaoCriptografada % 26 
					
					escreva(alfabeto[posicaoCriptografada])
					pare
				}
			}
		}
		
		
	}

	funcao descriptografar(cadeia frase, inteiro chave){
		inteiro numeroLetras = t.numero_caracteres(frase)

		escreva("a frase tem ", numeroLetras, " letras. \n")

		para(inteiro i=0; i < numeroLetras; i++){
			
			caracter letra = t.obter_caracter(frase, i)
			cadeia letraConvertida = ti.caracter_para_cadeia(letra)
			
			//em qual posicao do alfabeto está essa letra?
			para(inteiro j=0; j < 26; j++){

				se(letraConvertida == alfabeto_AC[j]){
					//escreva("a letra ", letraConvertida, " está na posicao ", j, "\n")

					inteiro posicaoCriptografada = j + chave

					//garantir que se a posicao passar do Z, volte para o inicio do alfabeto
					posicaoCriptografada = posicaoCriptografada % 26 
					
					escreva(alfabeto_AC[posicaoCriptografada])
					pare
				}
			}
		}
	}
}
