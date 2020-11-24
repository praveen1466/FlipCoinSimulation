#! /bin/bash
echo "Welcome"

read -p "enter number for number of flippin coin" num

hCount=0
tCount=0
tmp=1

while(( $tmp != 0 ))
do
	flip=$(( RANDOM%2 ))

	if(( $flip == 1 ))
	then
		tCount=(( tCount++))
	else
		hCount=(( hCount++))
	fi

	diff1 = $tCount-$hCount
	diff2 = $hCount-$tCount
	if(( $tCount > $hCount && $diff1>=2 && $diff2>=2 ))
	then
		tmp=0
	else
		tmp=1
	fi
done


echo "tails count $tCount"
echo "heads count $hCount"
