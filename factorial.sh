echo -n "Enter the number: "
read num

f=1

if [ $num -lt 0 ]
then
	echo "Factorial does not exist"
elif [ $num -eq 0 ]
then
	echo "Factorial of 0 is 1"
else 
	for ((i=1; i<=num;i++))
	do
		f=$((f*i))
	done
	echo "Factorial of $num is $f"
fi
