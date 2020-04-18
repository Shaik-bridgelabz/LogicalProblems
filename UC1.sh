#!/bin/bash -x

read -p "Enter the a value:" a
read -p "Enter the b value:" b
read -p "Enter the c value:" c

UC2=$(( $a + $b * $c ))

echo $UC2
