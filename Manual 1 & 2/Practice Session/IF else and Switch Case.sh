#!/bin/bash
a=$(( 4 + 5 ))
b=$(( 3 + 5 ))

# Performing arithmetic operations
echo "a is $a"
echo "b is $b"

# Comparing variables using if-else statement
if [ $a == $b ]; then
    # If they are equal then print this
    echo "a is equal to b"
else
    # Else print this
    echo "a is not equal to b"
fi

# Defining cars variable
CARS="bmw"

# Pass the variable in string
case "$CARS" in
    # Case 1
    "mercedes") echo "Headquarters − Affalterbach, Germany" ;;
    
    # Case 2
    "audi") echo "Headquarters − Ingolstadt, Germany" ;;
    
    # Case 3
    "bmw") echo "Headquarters − Chennai, Tamil Nadu, India" ;;
esac

# Defining VAR1 and VAR2 variables
VAR1="Linuxize"
VAR2="Linuxize"

# Comparing strings using if-else statement
if [ "$VAR1" = "$VAR2" ]; then
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi

# Defining VAR variable
VAR="Arch Linux"

# Passing VAR variable in case statement
case $VAR in
    # Case 1
    "Arch Linux")
        echo -n "Linuxize matched"
        ;;
    # Case 2
    Fedora | CentOS)
        echo -n "Red Hat"
        ;;
esac
