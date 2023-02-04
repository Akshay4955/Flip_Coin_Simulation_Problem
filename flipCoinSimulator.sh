#!/bin/bash
Head=0;
Tail=0;
for (( flip=1; flip<=20; flip++ ))
do
result=$((RANDOM%2));
if [ $result -eq 0 ]
then 
	Head=$(($Head+1));
else
	Tail=$(($Tail+1));
fi
done
echo "No of times Head Won is equal to :" $Head
echo "No of times Tail Won is equal to :" $Tail
