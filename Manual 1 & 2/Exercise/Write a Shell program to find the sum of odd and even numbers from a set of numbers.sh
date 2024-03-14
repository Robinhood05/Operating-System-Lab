#!/bin/bash

sum_odd=0
sum_even=0

read -p "Enter the value of n: " n
#taking input

for (( i = 1; i <= 2*n; i += 2 )); do
    sum_odd=$(( sum_odd + i )) #incrementing for odd values
done

for (( i = 2; i <= 2*n; i += 2 )); do
    sum_even=$(( sum_even + i ))      #for even values
done

echo "Sum of the first $n odd numbers: $sum_odd"
echo "Sum of the first $n even numbers: $sum_even"
