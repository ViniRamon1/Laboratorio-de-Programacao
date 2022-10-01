#!/bin/bash

while [ true ]
do
  echo -n "Escolha a questão 👉 "
  
  read questao

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

  *)
  echo "opção inválida!"
  esac

  echo "------------------------"
done
