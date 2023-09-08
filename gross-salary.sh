echo -n "Enter the hours worked: "
read hours_worked

echo -n "Enter the wage: "
read wage

if [ $hours_worked -gt 40 ]
then
	excess_hours=$((hours_worked - 40))
	pay=$((40 * wage + excess_hours * wage * 3 / 2))
else
	pay=$((hours_worked * wage))
fi

echo "Total gross pay: Rs. $pay"
