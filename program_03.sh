#!/bin/bash
echo -e "-----------------------"
echo -e "---ZMIENNE SPECJALNE---"
echo -e "-----------------------"
echo "Sciezka do pliku: $0"
echo "PID: $$"
echo "Ilosc parametrow $#"
x=0
for arg in $@
do
	x=$((x+1))
	echo "Wartosc parametru $x: $arg"
done
