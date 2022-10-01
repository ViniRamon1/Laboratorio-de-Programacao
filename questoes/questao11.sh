#!/bin/bash

if [ $2 != "" ]
then
	if [ $3 != "" ]
	then
		if [ $2 == "+" ]
		then
			resultado=$(($1 + $3))
			echo "$resultado"
		fi
		if [ $2 == "-" ]
		then
			resultado=$(($1 - $3))
			echo "$resultado"
		fi
		if [ $2 == "x" ]
		then
			resultado=$(($1*$3))
			echo "$resultado"
		fi
		if [ $2 == "/" ]
		then
			resultado=$(($1/$2))
			echo "$resultado"
		fi
	else
		echo "algo deu errado, tente novamente"
	fi
else
	echo "algo deu errado, tente novamente"
fi
