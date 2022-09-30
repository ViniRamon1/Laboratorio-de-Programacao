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
  echo "------------------------"
  ;;
  *)
  echo "opção inválida!"
  esac
done
