#/bin/sh

echo "read file"

while read -r line
do

	echo "$line"

done < numbers

echo "sort numbers"

sort -nr numbers

echo $numbers


echo "no duplicates"

sort -n numbers | uniq -i 

echo $numbers
