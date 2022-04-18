#/bin/sh

file=checkFile

if [ -f "$file" ]
then
	echo "error"
	echo "code $?"
else
	touch checkFile

fi
