#!/bin/sh
#create function
Hello () {
    echo "Hello World"
}
#calling function
Hello

echo "−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−"

Hello () {
    echo "Hello World $1 $2"
}

Hello Zara Ali

echo "−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−"

number_one () {
    echo "This is the first function speaking..."
    number_two
}

number_two () {
    echo "This is now the second function speaking..."
}

# Calling function one.
number_one
echo "−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−"

#!/bin/sh

#caaactorial of number

factorial() {
    if [ "$1" -gt "1" ]; then
        i=$(expr $1 - 1)
        j=$(factorial $i)
        k=$(expr $1 \* $j)
        echo $k
    else
        echo 1
    fi
}
while :
do
    echo "Enter a number:"
    read x
    factorial $x
done
