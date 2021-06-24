#!/bin/bash

if [[ $# != 2 ]];
then
	exit 1
else
	i=0
	ret=1
	while [[ $i -lt $2 ]] 
	do
		i=$((i+1))
		ret=$(($ret*$1))
	done
	echo "Wynik $1^$2: $ret"
fi
