#!/bin/sh

rm ticket.log
touch ticket.log

lengthOfTicket=`wc -l randomNumberGen.sh | awk '{print$1}'`

fiveRandomNumbers=$((1 + RANDOM % 50))

bonusNumber=$((1 + RANDOM % 10))

while true
do
	if [ $lengthOfTicket -lt 5 ]
	then 
		$fiveRandomNumbers >> ticket.log

		unset $fiveRandomNumbers

		if [ $lengthOfTicket -gt 4 ]
		then
			$bonusNumber >> ticket.log

			unset $bonusNumber

		fi
	fi
done

exit 0
