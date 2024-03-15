#!/bin/bash

# Create some files
touch file1.txt file2.txt file3.txt file4.txt

# List all files starting with 'file'
echo "Files starting with 'file':"
ls file*

# List all files ending with '.txt'
echo "Files ending with '.txt':"
ls *.txt

# List all files containing '2' in their names
echo "Files containing '2' in their names:"
ls *2*

# Move all files ending with '.txt' to a new directory
mkdir txt_files
mv *.txt txt_files/

# List files in the new directory
echo "Files in the 'txt_files' directory:"
ls txt_files
