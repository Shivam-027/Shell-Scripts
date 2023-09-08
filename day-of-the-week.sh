while true; do
	echo -n "Enter the number (1-7): "
	read num
	
	case $num in
		0)
			echo "Exit"
			exit
			;;
		1)
			echo "1 - Monday"
			echo " "
			;;
		2)
			echo "2 - Tuesday"
			echo " "
			;;
		3)
			echo "3 - Wednesday"
			echo " "
			;;
		4)
			echo "4 - Thursday"
			echo " "
			;;
		5)
			echo "5 - Friday"
			echo " "
			;;
		6)
			echo "6 - Saturday"
			echo " "
			;;
		7)
			echo "7 - Sunday"
			echo " "
			;;
		*)
			echo "Invalid Input"
			echo " "
			;;
	esac
done
		
