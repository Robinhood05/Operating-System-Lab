#!/bin/bash

# Create a sample text file
echo "This is line 1.
This is line 2.
This is line 3.
This is line 4.
This is line 5." > sample.txt

# Display the first 3 lines of the file
echo "First 3 lines of the file:"
head -n 3 sample.txt

# Display the last 2 lines of the file
echo "Last 2 lines of the file:"
tail -n 2 sample.txt

# Sort the lines of the file in alphabetical order
echo "Sorted lines of the file:"
sort sample.txt

# Add line numbers to the file
echo "Lines with line numbers:"
nl sample.txt

# Count the number of lines, words, and characters in the file
echo "Number of lines, words, and characters in the file:"
wc sample.txt

# Extract the second word from each line of the file
echo "Second word from each line of the file:"
cut -d ' ' -f 2 sample.txt

# Replace "line" with "sentence" in the file
echo "Replacing 'line' with 'sentence':"
sed 's/line/sentence/g' sample.txt

# Display lines containing "is" or "4" in the file
echo "Lines containing 'is' or '4' in the file:"
egrep 'is|4' sample.txt

# Remove the sample text file
rm sample.txt
