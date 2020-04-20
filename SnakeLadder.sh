#!/bin/bash -x

printf "Would you like to:\n    1)Read the rules\n    2)Play the game\n\n"
read choice

if ((choice == 1))
	then
		printf "\nThe rules are simple: \n   You press enter to roll the die\n   You are then told which space you have landed on\n   If you land on a snake you will move down the board\n   If you land on a ladder then you will move up it\n   In order to win you must land on 100 exactly\n   \n\n Good Luck\n\n"
fi

if (( choice == 2 ))
	then
		count=0;
		Position=0;
		while((Position < 100 && Position1 < 100))
		do
			((count++))
			echo "Player 1 turn ............................................................."
			echo -e "\n\nPlease press enter to roll\n\n"
			read ch

			dice=$(( 1 + RANDOM % 6 ))
			echo -e "\nYou have rolled a $dice.\n"
			Position=0;
			noPlay=0;
			ladder=1;
			snake=2;

			value=$(( RANDOM % 3 ));
			case $value in
					$noPlay )
							Position=$Position
							;;
					$ladder )
	 						Position=$(($Position+$dice))
							;;
					$snake )
							Position=$(($Position-$dice))
							;;
							* )
							Position=0;
			esac
			if (($Position < 0 ))
			then
				Position=0;
			fi

   		if (($Position > 100))
       	then
         	above=$((Position-100))
         	Position=$((100-above))
   		fi
			echo "Player1 position is" $Position

			if(($Position==100))
			then
			echo "Player1 wins"
			fi

			echo "Player 2 turn ........................................................."
   		echo -e "\n\nPlease press enter to roll\n\n"
   		read ch1

   		dice1=$(( 1 + RANDOM % 6 ))

   echo -e "\nYou have rolled a $dice1.\n"
			Position1=0;
	 		noPlay1=0;
         ladder1=1;
         snake1=2;

         value1=$(( RANDOM % 3 ));
         case $value1 in
               $noPlay1 )
                     Position1=$Position
                     ;;
               $ladder1 )
                     Position1=$(($Position+$dice))
							;;
               $snake1 )
                     Position1=$(($Position-$dice))
							;;
							*)
							Position1=0;
			esac
			if(($Position1 < 0 ))
			then
			Position1=0;
			fi

   		if (($Position1 > 100))
       	then
         	above1=$((Position1-100))
         	Position1=$((100-above1))
  			fi
			echo "Player2 Position is " $Position1
			if (($Position1==100))
			then
				echo "Player2 Wins"
			fi
	done
fi

