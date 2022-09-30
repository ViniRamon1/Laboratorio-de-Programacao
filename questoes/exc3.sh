#!/bin/bash

for temp in $(ls $1); 
do 
	if [ -d temp ] 
	then
		echo "$temp (dir)"
	else
		echo "$temp"
	fi
done
