echo -n "Enter the Number: "
read num

i=2

if [ $num -lt 2 ]
then
	echo "$num is not prime number"
	exit
fi
while [ $i -lt $num ]
do
	rem=$((num % i))
	if [ $rem -eq 0 ]
	then
		echo "$num is not a prime number"
		exit
	fi
	i=$((i + 1))
done

echo "$num is a prime number"

