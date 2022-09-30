#!/bin/bash

if [ $1 -lt $2 ]
then
	echo "$2 é o maior numero."
elif [ $1 -eq $2 ]
then 
	echo "Números iguais."
else
	echo "$1 é maior."
fi

soma=$(($1+$2))

echo "A soma é igual a $soma."
