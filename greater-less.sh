echo -n "Enter 1st number: "
read num1
echo -n "Enter 2nd number: "
read num2
echo -n "Enter 3rd number: "
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then 
	echo " "
	echo $num1 "is greater"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
	echo " "
	echo $num2 "is greater"
else
	echo " "
	echo $num3 "is greater"
fi
