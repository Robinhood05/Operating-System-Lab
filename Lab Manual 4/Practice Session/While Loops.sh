#!/bin/bash
#1 Type
# set n to 1
n=1
# continue until n equals 5
while [ $n -le 5 ]
do
    echo "Welcome $n times."
    n=$(( n+1 )) # increments $n
done

#2nd Type Using (( )) for conditional check:
n=1
while (( $n <= 5 ))
do
    echo "Welcome $n times."
    n=$(( n+1 ))
done
#taking input through while loop
#!/bin/sh
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
    echo "Please type something in (bye to quit)"
    read INPUT_STRING
    echo "You typed: $INPUT_STRING"
done
