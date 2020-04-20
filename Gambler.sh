#!/bin/bash -x
declare -A totalAmount
for (( days=1;days<=5;days++ ))
do
	stake=100;
	bet=1;
	noOfDays=20;
	goalPerDay=150;
	noOfWins=0;
	noOfLoss=0;
	total=0;
	dayWin=0;
	dayLoss=0;
	((stakes++))
	while (( $stake<$goalPerDay )) && (( $stake>50 ))
	do
		value=$(( RANDOM % 2 ))
		if [ $value -eq 1 ]
			then
				stake=$(( $stake + 1 )); #won
			else
				stake=$(( $stake - 1 )); #lost
		fi
	done
	if [ $stake -ge 150 ]
		then
			dayWin=$(($dayWin+1));
			echo "U have won 50% of stake, u should resign for the day "
			echo "Stake after winning is "$stake
		else
			dayLoss=$(($dayLoss+1));
			echo "U have lost 50% of stake, u should resign for the day"
			echo "Stake after Loosing is "$stake
	fi
	echo "No of Days won is $dayWin"
	echo "No of days loss is $dayLoss"
	total=$(( $total + $stake ))
	totalAmount["$stake"]=$total
done
	echo ${totalAmount[@]}
