#!/bin/bash

file=$(cat "$1")
flag=0
for line in $file
do
        if [ $flag = 0 ];
        then
                flag=1
                continue
        fi
        fullName=$(echo $line | tr ";" "\n")
        name=$(echo $fullName | awk '{print $2}')
        surname=$(echo $fullName | awk '{print $1}')
        login="${name::1}$surname"
	#login=`echo $login | tr '[:upper:]' '[:lower:]'`
#addgroup $login
delgroup $login 2>/dev/null
userdel -r $login 2>/dev/null
#useradd -m -d /home/$login -p $(echo "zaq12wsx" | openssl passwd -1 -stdin) $login
#useradd -m -d /home/$login -p $(echo "zaq12wsx" | openssl passwd -1 -stdin) $login        
done

