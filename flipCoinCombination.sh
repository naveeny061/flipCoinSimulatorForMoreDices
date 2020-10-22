#!/bin/bash -x
declare -A coinResult
declare -A percentageCoin
declare -a sorting
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
percentageCoin[H]=$((heads*10))
percentageCoin[T]=$((tails*10))




loop=0
while [ $loop -lt 10 ]
do
randomValue1=$((RANDOM%2))
randomValue2=$((RANDOM%2))
if [[ $randomValue1 -eq 0 && $randomValue2 -eq 0 ]]
then
((HH++))
coinResult[HH]=$HH
echo "Heads Heads"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 1 ]]
then
((TT++))
coinResult[TT]=$TT
echo "Tails Tails"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 1 ]]
then
((HT++))
coinResult[HT]=$HT
echo "Heads Tails"
else
((TH++))
coinResult[TH]=$TH
echo "Tails Heads"
fi
((loop++))
done
percentageCoin[HH]=$((HH*10))
percentageCoin[TT]=$((TT*10))
percentageCoin[HT]=$((HT*10))
percentageCoin[TH]=$((TH*10))



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
echo "Heads Heads Heads"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 0 && $randomValue -eq 1 ]]
then
((HHT++))
coinResult[HHT]=$HHT
echo "Heads Heads Tails"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 1 && $randomValue -eq 0 ]]
then
((HTH++))
coinResult[HTH]=$HTH
echo "Heads Tails Heads"
elif [[ $randomValue1 -eq 0 && $randomValue2 -eq 1 && $randomValue -eq 1 ]]
then
((HTT++))
coinResult[HTT]=$HTT
echo "Heads Tails Tails"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 0 && $randomValue -eq 0 ]]
then
((THH++))
coinResult[THH]=$THH
echo "Tails Heads Heads"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 0 && $randomValue -eq 1 ]]
then
((THT++))
coinResult[THT]=$THT
echo "Tails Heads Tails"
elif [[ $randomValue1 -eq 1 && $randomValue2 -eq 1 && $randomValue -eq 0 ]]
then
((TTH++))
coinResult[TTH]=$TTH
echo "Tails Tails Heads"
else
((TTT++))
coinResult[TTT]=$TTT
echo "Tails Tails Tails"
fi
((loop++))
done
percentageCoin[HHH]=$((HHH*10))
percentageCoin[HHT]=$((HHT*10))
percentageCoin[HTH]=$((HTH*10))
percentageCoin[HTT]=$((HTT*10))
percentageCoin[THH]=$((THH*10))
percentageCoin[THT]=$((THT*10))
percentageCoin[TTH]=$((TTH*10))
percentageCoin[TTT]=$((TTT*10))


sorting=( $(printf "%s\n" "${percentageCoin[@]}" | sort -n ))

for i in ${!percentageCoin[@]};
do
if [[ ${percentageCoin[$i]} -eq ${sorting[13]} ]]
then
    echo "winner ----"${i}
fi
done 
