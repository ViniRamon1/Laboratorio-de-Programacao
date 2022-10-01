#!/bin/bash

ordena() {
	palavras=$(sed 's/ /\n/g' <<< "$@")
	echo -e "\nordenada:"
	echo -e "\n$(sort <<< "$palavras")\n"
}

ordena $@
