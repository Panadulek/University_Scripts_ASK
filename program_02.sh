#!/bin/bash

read userName
echo "Wpiasno $userName"

isExist=$(cat /etc/passwd | grep $userName | wc -l)
if [[ $isExist -gt 0 ]];
then
	echo "W bazie danych znajduje sie uzytkownik: $userName"
	userId=$(cat /etc/passwd | grep $userName | cut -d: -f3)
	echo -e "Id uzytkownik: \t\t $userId"
	groupId=$(cat /etc/passwd | grep $userName | cut -d: -f4)
	echo -e "Id grupy: \t\t $groupId"
	groupName=$(cat /etc/group | egrep *:*:$groupId | cut -d":" -f1)
	echo -e "nazwa grupy: \t\t $groupName"
else
	echo "W bazie danych nie ma uzytkownika o nazwe: $userName"
fi

