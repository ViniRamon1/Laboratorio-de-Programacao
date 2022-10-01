#!/bin/bash

while [ true ]
do
  echo "Questoes: "
  echo "1) Apresenta o maior e a soma de dois numeros"
  echo "2) Verifica se o usuario existe no sistema"
  echo "3) Lista arquivos e diretorios de um diretorio especifico"
  echo "4) Lista todos os numeros pares até um limite dado"
  echo "5) Verifica se um arquivo existe e informa o tamanho dele"
  echo "6) Menu com opcao de particoes, usuarios logados e data e hora"
  echo "7) Informa o calendarios de aula"
  echo "8) Renomeia arquivos dado o primeiro nome do arquivo"
  echo "9) Ordena palavras a partir de uma lista"
  echo "10) Ordena palavras em loop"
  echo "11) Calculadora"
  echo "12) Usuarios cadastrados no sistema e seus diretorios home"
  echo "13) Informa qual shell mais utilizado"
  echo "Digite x para sair"
  
  echo -n "Escolha a questão 👉 "
  
  read questao
  clear

  case $questao in
  0)
  exit
  ;;
  1)
  echo
  echo "Script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações:"
  echo " - O maior dos números recebidos"
  echo " - O somatório dos números recebidos."
  echo -n "Digite o primeiro número 👉 "
  read arg1
  echo -n "Digite o segundo número 👉 "
  read arg2
  echo 
  ./questoes/exc1.sh $arg1 $arg2
  ;;

  2)
  echo
  echo "Script que solicita a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minúsculas)."
  ./questoes/exc2.sh
  ;;
  3)
  echo
  echo "Script que recebe como parâmetro o caminho de um diretório e lista seus arquivos e diretórios um a um. Se for diretório, é escrito '(dir)' ao lado do diretório."
  echo -n "Digite o caminho de um diretório 👉 "
  read arg
  echo 
  ./questoes/exc3.sh $arg
  ;;

  5)
  echo
  echo "Script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprimir o seu tamanho em bytes."
  echo -n "Digite o nome do arquivo:"
  read arg3
  echo
  ./questoes/exc5.sh $arg3
  ;;
  
  6)
  echo
  echo "Script que apresente ao usuário um menu com as seguintes opções:"
  echo
  ./questoes/exc6.sh
  ;;

  7)
  echo
  echo "Script que, a partir da informação dos dias da semana em que há aulas
  de TETI, produza todas as respectivas datas do ano em que serão ministradas
  nossas aulas."
  echo "Digite a data 1"
  read data1
  echo "Digite a data 2"
  read data2
  echo "Digite o dia"
  read dia
  ./questoes/exc7.sh $data1 $data2 $dia
  ;;

  8)
  echo
  echo "Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondete à primeira palavra encontrada no conteúdo do próprio arquivo."
  echo "Digite um diretorio"
  read diretorio
  ./questoes/exc8.sh $diretorio
  ;;
  
  9)
  echo "Esse script recebe como parametro palavras aleatorias e como resultado devolve essas palavras em ordem alfabetica"
  echo "digite as palavras:"
  read palavras
  ./questoes/questao9.sh $palavras
  ;;

  10)
  echo
  echo "Esse script recebe palavras e as ordena em um loop"
  ./questoes/questao10.sh
  ;;

  11) 
  echo
  echo "Esse script realiza operacoes aritmedicas basicas (adicao, subtracao, multiplicacao e divisao) recebendo a operacao e os numeros como exemplo (use +, -, x, / respectivamente)"
  echo "digite a operacao:"
  read operacao
  ./questoes/questao11.sh $operacao
  ;;

  12)
  echo
  echo "Esse script apresenta os usuarios cadastrados no sistema e seus respectivos diretorios home"
  ./questoes/questao12.sh
  ;;

  13)

  echo
  echo "Script que mostra qual o shell mais utilizado e informa quantos usuarios utilizam"
  ./questoes/questao13.sh
  ;;

  x) exit;;

  *)
  echo "opção inválida!"
  esac

  echo "------------------------"
done
