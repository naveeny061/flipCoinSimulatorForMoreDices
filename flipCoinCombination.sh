#!/bin/bash -x
declare -A coinResult
heads=0
tails=0
echo "Welcome to the Flip Coin Combination Program"
loop=0
while [ $loop -lt 10 ]
do
randomValue=$((RANDOM%2))
if [[ $randomValue -eq 0 ]]
then
((heads++))
coinResult[0]=$heads
echo "heads"
else
((tails++))
coinResult[1]=$tails
echo "tails"
fi
((loop++))
done
echo "heads percentage is " $((heads*10))
echo "tails parcentage is " $((tails*10))
