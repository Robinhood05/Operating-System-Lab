a=’My name is Sajibul Islam’
 echo ${#a} # 24 length of a string

# Taking as input
read -p "Enter the first number: " first_number

# showing output
read -p "Enter the second number: " second_number

# Calculate the result
result=$(( first_number + second_number ))

# Print the sum
echo "The sum is: $result"
