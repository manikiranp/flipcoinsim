#!/bin/bash 

echo "Welcome to Coinflip simulator"
read -p "Enter number of times you want to simulate the coin flip: " n
echo "Simulating for $n times:"
for (( i=1; i<=$n; i++ ))
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
echo "Heads count: $count1"
echo "Tails count: $count2"
