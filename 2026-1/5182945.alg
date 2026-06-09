algoritmo "5182945"
// Disciplina : Algoritmos e Estrutura de Dados
// Autora     : Rivane Martins
// RA         : 5182945
// Descricao  : Cadastra ate 10 alunos, calcula a media de 3 notas
//              e informa se cada aluno foi aprovado, em recuperacao
//              ou reprovado.

var
   nomes  : vetor[1..10] de caractere
   medias : vetor[1..10] de real
   n1, n2, n3 : real
   qtd, i     : inteiro

// ---------------------------------------------------------------
// Funcao: calcula a media aritmetica de tres notas
// ---------------------------------------------------------------
funcao calcularMedia(a, b, c : real) : real
inicio
   retorne (a + b + c) / 3
fimfuncao

// ---------------------------------------------------------------
// Procedimento: exibe o resultado individual do aluno
// ---------------------------------------------------------------
procedimento exibirResultado(nome : caractere; media : real)
inicio
   escreval("------------------------------------------")
   escreval("Aluno    : ", nome)
   escreval("Media    : ", media:5:2)
   se media >= 7.0 entao
      escreval("Situacao : APROVADO")
   senao
      se media >= 5.0 entao
         escreval("Situacao : RECUPERACAO")
      senao
         escreval("Situacao : REPROVADO")
      fimse
   fimse
fimprocedimento

// ---------------------------------------------------------------
// Programa principal
// ---------------------------------------------------------------
inicio
   escreval("==========================================")
   escreval("     SISTEMA DE CALCULO DE MEDIAS        ")
   escreval("==========================================")
   escreval

   escreval("Quantos alunos deseja cadastrar? (1 a 10)")
   leia(qtd)

   enquanto (qtd < 1) ou (qtd > 10) faca
      escreval("Valor invalido! Digite entre 1 e 10:")
      leia(qtd)
   fimenquanto

   escreval

   // Leitura dos dados
   para i de 1 ate qtd faca
      escreval("--- Aluno ", i, " ---")
      escreva("Nome: ")
      leia(nomes[i])
      escreva("Nota 1 (0 a 10): ")
      leia(n1)
      escreva("Nota 2 (0 a 10): ")
      leia(n2)
      escreva("Nota 3 (0 a 10): ")
      leia(n3)
      medias[i] <- calcularMedia(n1, n2, n3)
      escreval
   fimpara

   // Exibicao dos resultados
   escreval("==========================================")
   escreval("           RESULTADO FINAL               ")
   escreval("==========================================")

   para i de 1 ate qtd faca
      exibirResultado(nomes[i], medias[i])
   fimpara

   escreval("==========================================")
   escreval("Processamento concluido!")

fimalgoritmo
