#!/bin/bash
Head=0;
Tail=0;
while [ $Head -lt 21 -a $Tail -lt 21 ]
do
result=$((RANDOM%2));
if [ $result -eq 0 ]
then 
	Head=$(($Head+1));
else
	Tail=$(($Tail+1));
fi
done
if [ $Head -gt $Tail ]
then
	Win=$(($Head-$Tail));
	echo "Head is won by $Win"
elif [ $Head -lt $Tail ]
then
	Win=$(($Tail-$Head));
	echo "Tail is won by $Win"
else
	echo "Head and Tail Tie"
fi