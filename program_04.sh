#!/bin/bash
if [[ $1  -gt 0 ]];
then
	echo "$1 > 0"
elif [[ $1 = 0 ]];
then
	echo "$1 == 0"
else
	echo "$1 < 0"
fi
