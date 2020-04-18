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

echo dictionaryoutput
dict=${useCase[@]}
echo $dict

echo arrayOutputIs
for ((i=2;i<=5;i++))
do
array[$i]=${useCase[$i]}
echo ${array[$i]}
done


for (( i=2;i<=5;i++ ))
do
        for(( j=$i;j<=5;j++ ))
        do
                if [ ${array[i]} -lt ${array[j]} ]
                then
                        temp=${array[i]};
                        array[$i]=${array[$j]}
                        array[$j]=$temp;
                fi
        done
done

echo "Result in Desecnding Order is"

for(( i=2;i<=5;i++ ))
do
        echo ${array[$i]}
done
