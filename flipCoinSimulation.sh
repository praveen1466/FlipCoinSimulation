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

	if(( $tCount == 21 | $hCount == 21 ))
	then
		tmp=0
	fi
done

diff=$tCount-$hCount

if(( $tCount==21 ))
then
	echo " Tail is $tCount times win"
elif(( $hCount==21 ))
	echo "Head is $hCount times win"

elif((  $tCount > $hCount ))
	diff=$tCount-$hCount
	echo "Tail is won by $diff score"
else
	diff=$hCount-$tCount
	echo "Head is won by $diff score"
fi

