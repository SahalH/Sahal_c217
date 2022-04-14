#!/bin/sh

rm ticket.*
touch ticket.


lengthOfTicket=`wc -l randomNumberGen.sh | awk '{print$1}'`

fiveRandomNumbers=$((1 + RANDOM % 50))

bonusNumber=$((1 + RANDOM % 10))

Date=`date +%Y%m%d`

newname=*.

for i in 1 2 3 4 5
do
	
	fiveRandomNumbers=$((1 + RANDOM % 50))


	echo $fiveRandomNumbers >> ~/Sahal_c217/Activity3/ticket.

	unset fiveRandomNumbers
done

if [ $lengthOfTicket -gt 4 ]
        then
                echo $bonusNumber >> ~/Sahal_c217/Activity3/ticket.

                unset bonusNumber

        fi



for i in `ls`
do
        if [[ $i == $newname ]]
        then
                mv $i $i$Date
        fi
done


exit 0
