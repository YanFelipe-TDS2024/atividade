programa
{
	inclua biblioteca Util
	
	cadeia Convidados[100] = {"","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""}
	logico Continuar = verdadeiro

	funcao perguntar(){
		escreva("================== MENU ==================\n")
		escreva("[ 1 ] Cadastrar convidado\n")
		escreva("[ 2 ] Listar convidados\n")
		escreva("[ 3 ] Remover convidado\n")
		escreva("[ 4 ] Sair\n")
		escreva("==========================================\n")
		escreva("Opção: ")
	}

	funcao cadastrarConvidado(){
		inteiro EspacoVazio = 0
		cadeia Nome
		para(inteiro i = 0; i < Util.numero_elementos(Convidados); i++){
			se(Convidados[i] == ""){
				EspacoVazio = i
				pare
			}
		}
		limpa()
		escreva("Informe o nome desejado! ")
		leia(Nome)
		Convidados[EspacoVazio] = Nome
	}

	funcao listarConvidados(){
		cadeia Esperar = ""
		limpa()
		para(inteiro i = 0; i < Util.numero_elementos(Convidados); i++){
			se(Convidados[i] != ""){
				escreva(i + 1, ") ", Convidados[i], "\n")
			}
		}
		escreva("\n[PRESSIONE ENTER PARA FECHAR] ")
		leia(Esperar)
	}

	funcao removerConvidado(){
		cadeia Convidado
		limpa()
		escreva("Informe o convidado desejado! ")
		leia(Convidado)

		para(inteiro i = 0; i < Util.numero_elementos(Convidados); i++){
			se(Convidados[i] == Convidado){
				Convidados[i] = ""
			}
		}
	}
	
	funcao listaConvidados(){
		inteiro Opcao = 0
		perguntar()
		leia(Opcao)

		se(Opcao == 1){
			cadastrarConvidado()
		}senao se(Opcao == 2){
			listarConvidados()
		}senao se(Opcao == 3){
			removerConvidado()
		}senao{
			Continuar = falso
		}
	}
	
	funcao inicio()
	{
		enquanto(Continuar){
			limpa()
			listaConvidados()
		}
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Convidados, 5, 9, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */