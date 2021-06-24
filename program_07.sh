#!/bin/bash
number=-1
rand=$(($RANDOM/327))
while [[ $number != $rand ]]
do
	read number
	if [[ $number -gt $rand ]];
	then
		echo "podaj mniejsza liczbe"
	elif [[ $number -lt $rand ]];
	then
		echo "podaj wieksza liczbe"
	fi
done
echo "Wygrales"
