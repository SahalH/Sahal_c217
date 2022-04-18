#/bin/sh

echo "enter a filename"

read filename


if [ -f "$filename" ]
then
	echo "a file already exists"
	exit 1
else

	
	touch $filename

	
	echo "enter a how many random numbers to generate"
	
	read lines
	
	for i in $(seq 1 $lines)
	do
		echo $RANDOM >> $filename
	done

fi


