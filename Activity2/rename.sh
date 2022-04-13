#!/bin/sh


Date=`date +%Y%m%d`

testFiles=test*



for i in `ls`
do
	if [[ $i == $testFiles ]]
	then
		mv $i $i$Date
	fi
done


exit 0
