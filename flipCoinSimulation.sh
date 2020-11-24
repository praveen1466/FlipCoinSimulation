#! /bin/bash
echo "Welcome"

read -p "enter number for number of flippin coin" num

hCount=0
tCount=1
for(( i=0; i<$num; i++ ))
do

	flip=$(( RANDOM%2 ))

	if(( $flip == 1 ))
	then
		hCount=$(( hCount+1 ))
	else
		tCount=$(( tCount+1 ))
	fi
done

echo "Head is won $hCount times"
echo "Tail is won $tCount times"
