#!/bin/bash -x
read -p "Press 1 to flip a coin: " flip
if [ $flip -eq 1 ]
then
rand=$(( RANDOM % 2 ));
if [ $rand -eq 1 ]
then
        echo heads;
else
        echo tails;
fi
fi
