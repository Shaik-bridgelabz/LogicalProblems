#!/bin/bash -x

stake=100;
bet=1;
noOfDays=20;
goalPerDay=150;
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
	echo "U have won 50% of stake, u should resign for the day "
	echo "Stake after winning is "$stake
else
	echo "U have lost 50% of stake, u should resign for the day"
	echo "Stake after Loosing is "$stake
fi
