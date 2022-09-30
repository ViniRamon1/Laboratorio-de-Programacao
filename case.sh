#!/bin/bash

while [ true ]
do
  echo -n "Escolha a questão 👉 "
  
  read questao

  case $questao in
  0)
  exit
  ;;
  *)
  echo "opção inválida!"
  esac
done
