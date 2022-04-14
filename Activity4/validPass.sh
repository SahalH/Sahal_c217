#/bin/sh

passwordLength=`wc -m password.log | awk '{print$1}'`

if [ $passwordLength -gt 8 ]
then
	if [[ $(cat password.log | grep [0-9]) ]]
	then
		if [[ $(cat password.log | grep [a-z]) ]]
		then
			if [[ $(cat password.log | grep [A-Z]) ]]
			then echo "Valid Password"

			else echo "invalid password - Password needs Uppercase"
			fi
	
		else echo "invalid password - Password needs lowercase"
		fi

	else echo "invalid password - Password needs numbers"
	fi
	
else echo "invalid password - Password too Short"

fi
