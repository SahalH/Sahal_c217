#/bin/sh

declare -a my_array

echo "How many numbers"

read howManyNumbers


product=1

average=0

min=100000

max=0

if [ $howManyNumbers -gt 4 ]
then
	if [ $howManyNumbers -lt 11 ]
	then
		echo "enter any Number"
		
		for i in $(seq 1 $howManyNumbers)

		do
			read input </dev/tty
			my_array[i]=input
			
			product="$(($product*my_array[i]))"

			average="$(($average+my_array[i]))"

			if [[ $min -gt my_array[i] ]]
			then 
				min=$((my_array[i]))
			fi

			if [[ $max -lt my_array[i] ]]
			then
				max=$((my_array[i]))
			fi
			

		done

		echo "The product is $product"

		echo ""$(($average/$howManyNumbers))" is the average to the nearest number"

		echo "The sum is $average"

		echo "The Minimum number in the list is $min"

		echo "The Max number in the list is $max"

	else echo "enter less numbers"

	fi
else echo "enter more Numbers"

fi

