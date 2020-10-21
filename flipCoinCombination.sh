#!/bin/bash -x
echo "Welcome to the Flip Coin Combination Program"
randomValue=$((RANDOM%2))
if [[ $randomValue -eq 0 ]]
then
echo "heads"
else
echo "tails"
fi
