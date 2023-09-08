echo -n "Enter the number: "
read n

a=0
b=1

echo "The Fibanacci series: "

for ((i=0;i<n;i++))
do
	echo -n "$a "
	fn=$((a+b))
	a=$b
	b=$fn
done
