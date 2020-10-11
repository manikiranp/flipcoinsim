#!/bin/bash 

echo "Welcome to Coinflip simulator"
echo "Simulating 21 times"
echo "Checking whether Heads or Tails wins"
for (( i=1; i<=21; i++ ))
do
x=$((RANDOM%2))
if [ $x -eq 1 ]; then
	echo "Heads is the Winner!"
	((count1++))
else
	echo "Tails is the Winner!"
	((count2++))
fi
done
printf "\n"
printf "Heads:$count1\nTails:$count2\n"
if [ $count1 -gt $count2 ]; then
	echo "Heads is the Winner and won by:" $(($count1-$count2)) "margin"
elif [ $count1 -lt $count2  ]; then
	echo "Tails is the Winner and won by:" $(($count2-$count1)) "margin"
else
	echo "Its a Tie"
fi

