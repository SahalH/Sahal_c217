#!/bin/sh

numCorrect=0

declare -a GOLDNUM
declare -a YOURNUM



goldNum1=`head -n 1 goldenTicket`
yourNum1=`head -n 1 ticket.*`
goldNum2=`head -n 2 goldenTicket | tail -n 1`
yourNum2=`head -n 2 ticket.* | tail -n 1`
goldNum3=`head -n 3 goldenTicket | tail -n 1`
yourNum3=`head -n 3 ticket.* | tail -n 1`
goldNum4=`head -n 4 goldenTicket | tail -n 1`
yourNum4=`head -n 4 ticket.* | tail -n 1`
goldNum5=`head -n 5 goldenTicket | tail -n 1`
yourNum5=`head -n 5 ticket.* | tail -n 1`
goldNum6=`head -n 6 goldenTicket | tail -n 1`
yourNum6=`head -n 6 ticket.* | tail -n 1`


GOLDNUM[0]="$goldNum1"
GOLDNUM[1]="$goldNum2"
GOLDNUM[2]="$goldNum3"
GOLDNUM[3]="$goldNum4"
GOLDNUM[4]="$goldNum5"
GOLDNUM[5]="$goldNum6"

YOURNUM[0]="$yourNum1"
YOURNUM[1]="$yourNum2"
YOURNUM[2]="$yourNum3"
YOURNUM[3]="$yourNum4"
YOURNUM[4]="$yourNum5"
YOURNUM[5]="$yourNum6"



if [ $goldNum1 == $yourNum1 ]
then
	numCorrect=$(($numCorrect+1))

fi

if [ $goldNum2 == $yourNum2 ]
then
	numCorrect=$(($numCorrect+1))

fi

if [ $goldNum3 == $yourNum3 ]
then
        numCorrect=$(($numCorrect+1))
fi

if [ $goldNum4 == $yourNum4 ]
then
	numCorrect=$(($numCorrect+1))
fi

if [ $goldNum5 == $yourNum5 ]
then
	numCorrect=$(($numCorrect+1))
fi

if [ $goldNum6 == $yourNum6 ]
then
        numCorrect=$(($numCorrect+1))
fi



echo "You've got $numCorrect Correct"
