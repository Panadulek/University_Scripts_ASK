isExisting=$(ls | grep tmp | wc -l)
if [[ isExisting -le 0 ]];
then
	$(mkdir "tmp");
	for num in 0 1 2 3 4 5 6 7 8 9 10
	do
		$(touch "tmp/index$((50+num)).html")
	done
else
	echo "istnieje katalog"
fi
