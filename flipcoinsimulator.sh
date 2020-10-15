#!/bin/bash 

echo "Welcome to Coinflip simulator"
echo "Simulating 22 times"
echo "Checking whether Heads or Tails wins"
function flip () {
count1=0; count2=0;
for (( i=1; i<=$1; i++ ))
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
}

function winner() {
	flip "22"
	if [ $count1 -gt $count2 ]; then
		echo "Heads is the Winner and won by:" $(($count1-$count2)) "margin"
	elif [ $count1 -lt $count2  ]; then
		echo "Tails is the Winner and won by:" $(($count2-$count1)) "margin"
	else
		printf "Its a Tie\nSimulating the program again\n"
		winner
	fi
}

winner
