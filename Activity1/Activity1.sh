#!/bin/sh



echo $USER

date +%Y/%m/%d

date +%X

pwd

ls | wc -l

current=`pwd`

du -a /$current | sort -n -r | head -2 | tail -1

exit 0;
