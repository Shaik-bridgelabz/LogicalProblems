#!/bin/bash -x

stake=100;
bet=1;
wins=0;
loss=0;
for(( i=1;i<=$stake;i++ ))
do
	value=$(( RANDOM % 2 ))
	if [ $value -eq 1 ]
	then
		wins=$(( $wins + 1 ));
	else
		loss=$(( $loss + 1 ));
	fi
done
echo "Wins= " $wins
echo "Loss= " $loss
