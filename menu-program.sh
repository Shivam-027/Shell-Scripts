while true; do
	echo "Enter the number"
	echo "1. List of files"
	echo "2. Process Status"
	echo "3. Date"
	echo "4. User programs" 
	echo "5. Quit"
	read num
	
	case $num in
		1)
			echo " "
			echo "List of files"
			ls
			echo " "
			;;
		2)
			echo " "
			echo "Process Status"
			ps
			echo " "
			;;
		3)
			echo " "
			echo "Date"
			date
			echo " "
			;;
		4)
			echo " "
			echo "User programs"
			echo $USER
			echo " "
			;;
		5)
			echo " "
			echo "Quiting"
			exit
			echo " "
			;;
		*)
			echo "\nInvalid input\n"
	esac
done

