#!/bin/bash -x

stake=100;
bet=1;
wins=0;
loss=0;
while (( $wins<=50 )) && (( $loss<=50 ))
do
	value=$(( RANDOM % 2 ))
	if [ $value -eq 1 ]
	then
		wins=$(( $wins + 1 ));
	else
		loss=$(( $loss + 1 ));
	fi
done
if [ $wins -gt 50 ]
then
	echo "U have won 50% of stake, u should resign for the day "
else
	echo "U have lost 50% of stake, u should resign for the day"
fi
echo "Wins= " $wins
echo "Loss= " $loss
