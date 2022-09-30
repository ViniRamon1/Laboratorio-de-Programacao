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
  *)
  echo "opção inválida!"
  esac

  echo "------------------------"
done
