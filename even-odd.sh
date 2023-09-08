echo -n "Enter the number: "
read num

rem=$((num%2))
if [ $rem -eq 0 ]
then 
	echo $num "is even number"
else
	echo $num "is odd number"
fi
