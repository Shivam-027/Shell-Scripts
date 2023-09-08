echo -n "Enter the number of processes: "
read num_pro

processes=()
burst=()

for ((i = 1; i <= num_pro; i++)); do
    read -p "Enter the process name for P$i: " proc
    read -p "Enter the burst time for P$i: " bur

    processes+=("$proc")
    burst+=("$bur")

    echo " "
done

total_wt=0
total_tat=0
current_time=0  

echo "Process name    Burst time    Waiting time    Turnaround Time"

for ((i = 0; i < num_pro; i++)); do
    name="${processes[i]}"
    burst_time="${burst[i]}"
    
    wt=$((current_time))
    
    tat=$((wt + burst_time))

    total_wt=$((total_wt + wt))

    total_tat=$((total_tat + tat))

    echo "$name    $burst_time    $wt    $tat"

    current_time=$((current_time + burst_time))
done

avg_wt=$((total_wt / num_pro))
avg_tat=$((total_tat / num_pro))

echo "Total Waiting time: $total_wt"
echo "Total Turnaround time: $total_tat"
echo "Average Waiting time: $avg_wt"
echo "Average Turnaround time: $avg_tat"
