#!/bin/bash
# Exercício 8 - Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondete à primeira palavra encontrada no conteúdo do próprio arquivo.

for file in $(ls)
do
	if [[ -d $file || $file = $0 ]]
	then
		continue
	fi

	palavra=$(head -n1 $file | cut -d ' ' -f 1)

	echo "Renomeando o arquivo  $file para $palavra"
done



