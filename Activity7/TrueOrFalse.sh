#/bin/sh


unset Answer
unset Question

Question=1

Answer=0

declare -p place


place[0]=`head -n 1 questions | awk -F ";" '{print$2}'`

place[1]=`head -n 2 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[2]=`head -n 3 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[3]=`head -n 4 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[4]=`head -n 5 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[5]=`head -n 6 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[6]=`head -n 7 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[7]=`head -n 8 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[8]=`head -n 9 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[9]=`head -n 10 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[10]=`head -n 11 questions | tail -n 1 | awk -F ";" '{print$2}'`

place[11]=`head -n 12 questions | tail -n 1 | awk -F ";" '{print$2}'`


incPlace=$(place[$Answer])


while read -r row
do

	echo $row | awk -F ";" '{print$1}'

	echo "T or F"
	echo "Make sure to use Capital letters"

	read input </dev/tty

	if [[ $input == ${place[$Answer]} ]] 
	then
		echo "Correct"
		Questions=$(($Questions+1))
		Answer=$(($Answer+1))


	else
		
		echo $incPlace
		echo "Wrong"
		exit 1
	fi

done < questions
