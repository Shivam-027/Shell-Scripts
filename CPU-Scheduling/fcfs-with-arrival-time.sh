echo -n "Enter the number of processes: "
read num_pro

processes=()
arrival=()
burst=()

for ((i = 1; i <= num_pro; i++)); do
    read -p "Enter the process name for P$i: " proc
    read -p "Enter the arrival time for P$i: " arr
    read -p "Enter the burst time for P$i: " bur

    processes+=("$proc")
    arrival+=("$arr")
    burst+=("$bur")

    echo " "
done

for ((i = 0; i < num_pro - 1; i++)); do
    for ((j = 0; j < num_pro - i - 1; j++)); do
        if [ "${arrival[$j]}" -gt "${arrival[$(($j + 1))]}" ]; then
            temp="${arrival[$j]}"
            arrival[$j]="${arrival[$(($j + 1))]}"
            arrival[$(($j + 1))]="$temp"
            
            temp="${processes[$j]}"
            processes[$j]="${processes[$(($j + 1))]}"
            processes[$(($j + 1))]="$temp"
            
            temp="${burst[$j]}"
            burst[$j]="${burst[$(($j + 1))]}"
            burst[$(($j + 1))]="$temp"
        fi
    done
done

total_wt=0
total_tat=0

echo "Process name    Arrival time    Burst time    Waiting time    Turnaround Time"

current_time=0

for ((i = 0; i < num_pro; i++)); do
    name="${processes[i]}"
    arrival_time="${arrival[i]}"
    burst_time="${burst[i]}"
    
    if [ $current_time -le $arrival_time ]; then
        wt=0
    else
        wt=$((current_time - arrival_time))
    fi
    
    tat=$((wt + burst_time))

    total_wt=$((total_wt + wt))
    total_tat=$((total_tat + tat))

    echo "$name    $arrival_time    $burst_time    $wt    $tat"

    current_time=$((current_time + burst_time))
done

avg_wt=$((total_wt / num_pro))
avg_tat=$((total_tat / num_pro))

echo "Total Waiting time: $total_wt"
echo "Total Turnaround time: $total_tat"
echo "Average Waiting time: $avg_wt"
echo "Average Turnaround time: $avg_tat"
