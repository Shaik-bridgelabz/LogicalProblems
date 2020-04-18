#!/bin/bash -x

read -p "Enter the a value:" a
read -p "Enter the b value:" b
read -p "Enter the c value:" c
declare -A UC
UC[2]=$(( $a + $b * $c ))
UC[3]=$(( $a * $b + $c ))
UC[4]=$(( $c + $a / $b ))
UC[5]=$(( $a % $b + $c ))
echo "UseCases" ${UC[@]}
