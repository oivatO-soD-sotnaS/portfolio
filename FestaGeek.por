programa
{
	inclua biblioteca Util
	cadeia lista[100]
	funcao inicio()
	{
		inteiro ans
		cadeia nome

		para(inteiro i = 0;i<100;i++){
			
		limpa()
		escreva("Adicionar pessoa[1] Retirar pessoa[2] Mostrar lista de convidados[3]:\n-->")
		leia(ans)
		
		se(ans == 1){
			    limpa()
			    escreva("Digite o nome completo do convidado:\n-->")
			    leia(nome)
			    lista[i] = nome}
		senao se(ans == 2){
			    limpa()
			    escreva("Digite o nome da pessoa a ser retirada\n-->")
			    leia(nome)
			    retirar(nome)}
		senao se(ans == 3){
			    limpa()
			    escreva("____________CONVIDADOS____________\n")
			    para(inteiro x = 0;x<Util.numero_elementos(lista);x++){
			        se(lista[x] != ""){
			        escreva(lista[x],"\n")}
			        }
			        Util.aguarde(3000)
			        }
		senao{
			    limpa()
			    escreva("Comando nao identificado")
			    Util.aguarde(1500)}
			        
		     
		}
	}
	funcao retirar(cadeia nome)
	{
		para(inteiro x = 0;x<Util.numero_elementos(lista);x++){
			se(lista[x] == nome){
				lista[x] = ""
			}
		}
	}
}
