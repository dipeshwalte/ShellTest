#!/bin/bash
for((i=1;i<=6;i++))
do
diceArray+=([$i]=0)
done
for((i=1;i<=20;i++))
do
diceFace=$((RANDOM%6+1))
((diceArray[$diceFace]++))
done
echo The faces of the dice are ${!diceArray[@]}
echo The Count on each face is ${diceArray[@]}
