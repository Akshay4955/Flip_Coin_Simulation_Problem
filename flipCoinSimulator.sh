#!/bin/bash
result=$((RANDOM%2));
if [ $result -eq 0 ]
then 
	echo "Winner is Head"
else
	echo "Winner is Tail"
fi