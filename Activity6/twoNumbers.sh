#/bin/sh


echo "Enter number A: "

read a

if [[ $(echo $a | grep [Aa-Zz]) ]]
then
	echo "You need to enter a number"
	exit 1
fi


if [[ $(echo $a | grep [[:punct:]]) ]]
then
        echo "You need to enter a number"
        exit 1
fi




echo "Enter number B: "

read b

if [[ $(echo $b | grep [Aa-Zz]) ]]
then 
	echo "You need to enter a number" 
	exit 1 
fi



if [[ $(echo $b | grep [[:punct:]]) ]]
then
        echo "You need to enter a number"
        exit 1
fi






if [ $a -gt $b ]
then
	echo "true"
elif [ $a == $b ]
then
	echo "A is Equal to B"
else
	echo "false"
fi





if [ $a -gt $b ]
then
	newNumA="$(($a-$b))"
	echo "The Difference between A and B is $newNumA"
else
	newNumB="$(($b-$a))"
	echo "The Difference between A and B is $newNumB"
fi

exit 0
