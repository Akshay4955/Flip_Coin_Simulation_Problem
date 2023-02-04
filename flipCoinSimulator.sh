#!/bin/bash
Head=0;
Tail=0;
function myFunction() {
result=$((RANDOM%2));
if [ $result -eq 0 ]
then 
	Head=$(($Head+1));
else
	Tail=$(($Tail+1));
fi
No_of_Flip[((count++))]=$result;
}
while [ $Head -lt 21 -a $Tail -lt 21 ]
do 
	myFunction
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
	while [ $(($Head-$Tail)) -lt 2 -a $(($Tail-$Head)) -lt 2 ]
	do
	myFunction
	echo "Head is equal to $Head and Tail is equal to $Tail"
	done
fi
echo "No of flip by coins are ${!No_of_Flip[@]}"