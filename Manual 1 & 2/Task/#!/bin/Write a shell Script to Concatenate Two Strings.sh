#!/bin/bash

# Prompt the user to enter the first string
read -p "Enter the first string: " first_string

# Prompt the user to enter the second string
read -p "Enter the second string: " second_string

# Concatenate the two strings
concatenated_string="${first_string}${second_string}"

# Print the concatenated string
echo "Concatenated string: $concatenated_string"

