#/bin/sh


number=`comm -1 -2 <(sort file1) <(sort file2)`

if [ -z $number ]
then
	echo "these files have nothing in common"

else
	echo "these files have something in common"
fi
