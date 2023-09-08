echo -n "Enter the Size: "
read n

i=1
sum=0

while [ $i -le $n ]
do
	echo -n "Enter the" $i "numbers: "
	read num
	sum=$((sum+num))
	i=$((i+1))
done

avg=$(($sum / $n))
echo "Average: " $avg
