#!/bin/bash

# Print the length of the string
STRING="this is a string"
echo ${#STRING} # 16

# Find the numerical position of the first occurrence of a substring
STRING="this is a string"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING" # 1 is the position of the first ’t’ in $STRING

# Extract a substring of length $LEN from $STRING starting after position $POS
STRING="this is a string"
POS=1
LEN=3
echo ${STRING:$POS:$LEN} # his

# Example of substring extraction without specifying length 
STRING="this is a string"
echo ${STRING:1} # his is a string
echo ${STRING:12} # ring

# Replace first occurrence of substring with replacement
STRING="to be or not to be"
echo ${STRING[@]/be/eat} # to eat or not to be

# Replace all occurrences of substring
STRING="to be or not to be"
echo ${STRING[@]//be/eat} # to eat or not to eat

# Delete all occurrences of substring (replace with empty string)
STRING="to be or not to be"
echo ${STRING[@]// not/} # to be or to be

# Replace occurrence of substring if at the beginning of $STRING
STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now} # eat now or not to be

# Replace occurrence of substring if at the end of $STRING
STRING="to be or not to be"
echo ${STRING[@]/%be/eat} # to be or not to eat
