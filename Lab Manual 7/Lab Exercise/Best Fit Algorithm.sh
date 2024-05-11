  echo "This is Best Fit Algorithm"
blocks_size=()
process_size=()
allocated_blocks=()
while true; do
    read -p "Enter each Blocks Size, press 'Stop' after finish: " input
    if [ "$input" == "Stop" ]; then
        break
    fi
    blocks_size+=("$input")
done
while true; do
    read -p "Enter each Process Size, press 'Stop' after finish: " input
    if [ "$input" == "Stop" ]; then
        break
    fi
    process_size+=("$input")
done
total_fragmentation=0
echo "File_no File_size Block_no Block_size Fragment"
for ((i=0; i<${#process_size[@]}; i++)); do
    current_process=${process_size[$i]}
    min_fragmentation=999
    min_index=-1
    for ((j=0; j<${#blocks_size[@]}; j++)); do
        current_block=${blocks_size[$j]}
        if [ "$current_block" -ge "$current_process" ]; then
            fragmentation=$((current_block - current_process))
            if [ "$fragmentation" -lt "$min_fragmentation" ]; then
                min_fragmentation=$fragmentation
                min_index=$j          fi
        fi    done

    if [ "$min_index" -ne -1 ]; then
        allocated_blocks[$i]=$min_index
        current_fragmentation=$((blocks_size[$min_index] - current_process))
        if [ "$current_fragmentation" -gt 0 ]; then
            total_fragmentation=$((total_fragmentation + current_fragmentation))
        fi
        blocks_size[$min_index]=$current_process  # Update block size
        echo "$((i+1)) ${process_size[$i]} $((min_index+1)) ${blocks_size[$min_index]} $current_fragmentation"
    fi
done

echo "Total Fragmentation: $total_fragmentation"
