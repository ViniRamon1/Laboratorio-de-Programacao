#!/bin/bash

while : 
do
	if [ "$palavra" == "sair" ]
	then
		exit
	fi
	echo "Informe a palavra a ser adicionada a lista:"
	read palavra
	echo "$palavra" >> /tmp/lista.txt
	echo
	sort /tmp/lista.txt
done
