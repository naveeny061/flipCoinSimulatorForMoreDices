#!/bin/bash -x
declare -A coinResult
HH=0
TT=0
HT=0
TH=0
echo "Welcome to the Flip Coin Combination Program"
loop=0
while [ $loop -lt 10 ]
do
randomValue1=$((RANDOM%2))
randomValue2=$((RANDOM%2))
if [[ $randomValue1 -eq 0 && $randomValue2 -eq 0 ]]
then
((HH++))
coinResult[HH]=$HH
echo "HH"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 1 ]]
then
((TT++))
coinResult[TT]=$TT
echo "TT"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 1 ]]
then
((HT++))
coinResult[HT]=$HT
echo "HT"
else
((TH++))
coinResult[TH]=$TH
echo "TH"
fi
((loop++))
done
echo "HH percentage is " $((HH*10))
echo "TT parcentage is " $((TT*10))
echo "HT percentage is " $((HT*10))
echo "TH parcentage is " $((TH*10))
