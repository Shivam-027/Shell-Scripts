echo -n "Enter the number: "
read num

temp=$num

while [ $temp -gt 0 ]
do
	ans=$((ans*10))
	mod=$((temp%10)) 
	ans=$((ans+mod)) 
	temp=$((temp/10))
done

if [ $num == $ans ]
then
	echo "$num is a Palindrome Number"
else
	echo "$num is not a Palindrome Number" 
fi
