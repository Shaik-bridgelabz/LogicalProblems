#!/bin/bash -x

function checkPosition()
{
    case $Position in
   4)
       newPosition=35
       ;;

   7)
       newPosition=23
       ;;

   9)
       newPosition=5
       ;;

   14)
       newPosition=43
       ;;

   17)
       newPosition=13
       ;;

   21)
       newPosition=3
       ;;

   24)
       newPosition=85
       ;;

   27)
       newPosition=47
       ;;


   34)
       newPosition=20
       ;;

   42)
       newPosition=11
       ;;

   56)
       newPosition=98
       ;;

   79)
       newPosition=32
       ;;

   83)
       newPosition=2
       ;;
   70)
      newPosition=91
      ;;
   88)
      newPosition=50
      ;;

   *)
       newPosition=$Position
       ;;
    esac
}

printf "Would you like to:\n    1)Read the rules\n    2)Play the game\n\n"
read choice

if ((choice == 1))
then
    printf "\nThe rules are simple: \n   You press enter to roll the die\n   You are then told which space you have landed on\n   If you land on a snake you will move down the board\n   If you land on a ladder then you will move up it\n   In order to win you must land on 100 exactly\n   \n\n Good Luck\n\n"
fi

if ((choice == 2))
then
    printf "\nWelcome to Snakes and Ladders.\n\n\n"
    printf " 100 99  98  97  96  95  94  93  92  91"
	 printf " 81  82  83  84  85  86  87  88  89  90"
	 printf " 80  79  78  77  76  75  74  73  72  71       	1=Start            27=Ladder to 47\n"
    printf " 61  62  63  64  65  66  67  68  69  70         4=Ladder to 35     34=Snake  to 20\n"
    printf " 60  59  58  57  56  55  54  53  52  51         7=Ladder to 23     42=Snake  to 11\n"
    printf " 41  42  43  44  45  46  47  48  49  50         9=Snake  to 5      56=Ladder to 98\n"
    printf " 40  39  38  37  36  35  34  33  32  31        	14=Ladder to 43    79=Snake  to 32\n"
    printf " 21  22  23  24  25  26  27  28  29  30      	17=Snake  to 13    83=Snake  to 2\n"
    printf " 20  19  18  17  16  15  14  13  12  11        	21=Snake  to 3     70=Ladder to 91\n"
    printf " 1	  2   3	 4   5   6   7   8   9   10   		24=Ladder to 85    88=Snake  to 50 \n "

while((Position < 100))
do
	echo -e "\n\nPlease press enter to roll\n\n"
	read ch

	dice=$(( 1 + RANDOM % 6 ))

	echo -e "\nYou have rolled a $dice.\n"

	 Position=$((Position+dice))

   if (($Position > 100))
       then
         above=$((Position-100))
         Position=$((100-above))
   fi

   echo -e "\nYou have landed on space $Position.\n"

   checkPosition

   if ((Position < newPosition))
         then
            echo -e "\nWell done, you have landed on a ladder. You are now on space $newPosition."
   fi

   if ((Position > newPosition))
         then
            echo -e "\nUnlucky, you have landed on a snake. You are now on space $newPosition."
   fi
   if ((Position==100))
      then
         echo -e "\nCongratulations, you won"
   fi
Position=$newPosition
done
fi

