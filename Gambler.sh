#!/bin/bash -x

declare -A noOfwins
declare -A noOfLoss
for (( days=1;days<=20;days++ ))
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
	goalforMonth=$(( $stake * $noOfDays ))
	while (( $stake<$goalPerDay )) && (( $stake>50 ))
	do
		value=$(( RANDOM % 2 ))
		if [ $value -eq 1 ]
			then
				noOfWins[$days]=$((${noOfWins[$days]}+1));
				stake=$(( $stake + 1 )); #won
			else
				noOfLoss[$days]=$((${noOfLoss[$days]}+1));
				stake=$(( $stake - 1 )); #lost
		fi
	done
	total=$(( $total + $stake ))
        echo "Total Amount is : " $total
done
	if [ $stake -lt $goalforMonth ]
		then
			dayLoss=$(($dayLoss+1));
                        echo "U have lost 50% of stake, u should resign for the day"
                        echo "Stake after Loosing is "$stake
		else
			dayWin=$(($dayWin+1));
                        echo "U have won 50% of stake, u should resign for the day "
                        echo "Stake after winning is "$stake

	fi
	echo "No of Days won is $dayWin"
	echo "No of days loss is $dayLoss"

if [ $noOfWins -gt $noOfLoss ]
	then
		echo "Play Next Month"
	else
		echo "Dont Play Next Month"
	fi
