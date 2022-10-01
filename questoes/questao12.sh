#!/bin/bash

users=$(cat /etc/passwd | cut -d ":" -f 1)

for user in $users
do 
	echo $user "=>" $( getent passwd $user | cut -d: -f6 )
done
