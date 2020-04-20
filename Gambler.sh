#!/bin/bash -x
declare -A totalAmount
for (( days=1;days<=20;days++ ))
do
	stake=100;
	bet=1;
	noOfDays=20;
	goalPerDay=150;
	noOfWins=0;
	noOfLoss=0;
	total=0;
	((stakes++))
	while (( $stake<$goalPerDay )) && (( $stake>50 ))
	do
		value=$(( RANDOM % 2 ))
		if [ $value -eq 1 ]
			then
				noOfWins=$(( $noOfWins + 1 ))
				stake=$(( $stake + 1 )); #won
			else
				noOfLoss=$(( $noOfLoss + 1 ))
				stake=$(( $stake - 1 )); #lost
		fi
	done
	if [ $stake -ge 150 ]
		then
			echo "U have won 50% of stake, u should resign for the day "
			echo "Stake after winning is "$stake
		else
			echo "U have lost 50% of stake, u should resign for the day"
			echo "Stake after Loosing is "$stake
	fi
	wins[$days]=$noOfWins
	loss[$days]=$noOfLoss
	total=$(( $total + $stake ))
	totalAmount["$stake"]=$total
done
	echo ${totalAmount[@]}
