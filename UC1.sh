#!/bin/bash -x

read -p "Enter the a value:" a
read -p "Enter the b value:" b
read -p "Enter the c value:" c
declare -A useCase
compute1=$(( $a + $b * $c ))
compute2=$(( $a * $b + $c ))
compute3=$(( $c + $a / $b ))
compute4=$(( $a % $b + $c ))

useCase[2]=$compute1;
useCase[3]=$compute2;
useCase[4]=$compute3;
useCase[5]=$compute4;

echo arrayoutput
counter=0;
UseCase[((counter++))]=$compute1;
UseCase[((counter++))]=$compute2;
UseCase[((counter++))]=$compute3;
UseCase[((counter++))]=$compute4;
echo ${UseCase[@]}

echo dictionaryoutput
echo ${useCase[@]}
echo ${!useCase[@]}
