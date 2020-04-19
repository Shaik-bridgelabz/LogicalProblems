#!/bin/bash -x
read -p "Enter how many times to flip " flips
coins=2; #for creating doublet

declare -A flipstore
heads=0;
tails=0;

function flip() {
for (( i=1;i<=$flips;i++ ))
do
	s=""
	for(( j=0;j<$coins;j++ ))
	do
		value=$(( RANDOM % 2 ))
		if [ $value -eq 1 ]
			then
				s=$s"H"
				heads=$(( $heads+1 ))
		else
			s=$s"T"
			tails=$(( $tails+1 ))
		fi
	done
echo final key : $s

flipstore["$s"]=$(( ${flipstore["$s"]} + 1 ))
done
}

flip

echo ${!flipstore[@]}
echo ${flipstore[@]}

MaxValueCoin=$( printf "%s\n" ${!flipstore[@]} ${flipstore[@]} | sort -nr | head -1 )
percOfMaxCoin=$(( $MaxValueCoin * 100 / $flips ))
echo Percentage is
echo $percOfMaxCoin
