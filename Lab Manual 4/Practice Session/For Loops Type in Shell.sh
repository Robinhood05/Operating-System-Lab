# Different Types of for Loop 
#!/bin/bash
#one types of for loop
for i in 1 2 3 4 5
do
    echo "Welcome $i times"
done
# 2nd Type
for i in {1..5}
do
    echo "Welcome $i times"
done
echo "−−−−−−−−−−−−−−−−−−−−−−−−−−"
#third types
for i in {0..10..2}
do
    echo "Welcome $i times"
done
echo "−−−−−−−−−−−−−−−−−−−−−−−−−−"
# Loop using 'seq' 
for i in $(seq 1 2 20)
do
    echo "Welcome $i times"
done

# Output separator
echo "−−−−−−−−−−−−−−−−−−−−−−−−−
#Easiest Loop
for ((i=0; i<=5; i++))
do
    echo "Welcome $i times"
done
