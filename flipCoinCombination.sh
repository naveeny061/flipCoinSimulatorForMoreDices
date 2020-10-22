#!/bin/bash -x
declare -A coinResult
heads=0
tails=0
HH=0
TT=0
HT=0
TH=0
HHH=0
HHT=0
HTH=0
HTT=0
THH=0
THT=0
TTH=0
TTT=0
echo "Welcome to the Flip Coin Combination Program"



loop=0
while [ $loop -lt 10 ]
do
randomValue=$((RANDOM%2))
if [[ $randomValue -eq 0 ]]
then
((heads++))
coinResult[H]=$heads
echo "heads"
else
((tails++))
coinResult[T]=$tails
echo "tails"
fi
((loop++))
done
echo "heads percentage is " $((heads*10))
echo "tails parcentage is " $((tails*10))




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



loop=0
while [ $loop -lt 10 ]
do
randomValue1=$((RANDOM%2))
randomValue2=$((RANDOM%2))
randomValue3=$((RANDOM%2))
if [[ $randomValue1 -eq 0 && $randomValue2 -eq 0 && $randomValue -eq 0 ]]
then
((HHH++))
coinResult[HHH]=$HHH
echo "HHH"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 0 && $randomValue -eq 1 ]]
then
((HHT++))
coinResult[HHT]=$HHT
echo "HHT"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 1 && $randomValue -eq 0 ]]
then
((HTH++))
coinResult[HTH]=$HTH
echo "HTH"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 1 && $randomValue -eq 1 ]]
then
((HTT++))
coinResult[HTT]=$HTT
echo "HTT"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 0 && $randomValue -eq 0 ]]
then
((THH++))
coinResult[THH]=$THH
echo "THH"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 0 && $randomValue -eq 1 ]]
then
((THT++))
coinResult[THT]=$THT
echo "HHH"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 1 && $randomValue -eq 0 ]]
then
((TTH++))
coinResult[TTH]=$TTH
echo "TTH"
else
((TTT++))
coinResult[TTT]=$TTT
echo "HHH"
fi
((loop++))
done
echo "HHH percentage is " $((HHH*10))
echo "HHT parcentage is " $((HHT*10))
echo "HTH percentage is " $((HTH*10))
echo "HTT parcentage is " $((HTT*10))
echo "THH percentage is " $((THH*10))
echo "THT parcentage is " $((THT*10))
echo "TTH percentage is " $((TTH*10))
echo "TTT parcentage is " $((TTT*10))
