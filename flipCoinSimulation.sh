#! /bin/bash
echo "Welcome"

flip=$(( RANDOM%2 ))

if(( $flip == 1 ))
then
	echo "Tail"
else
	echo "head"
fi
