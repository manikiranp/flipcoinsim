#!/bin/bash -x

echo "Welcome to Coinflip simulator"
x=$(($RANDOM % 2))
if [ $x -eq 1 ]; then
	echo "Heads is the Winner!"
else
	echo "Tails is the Winner!"
fi
