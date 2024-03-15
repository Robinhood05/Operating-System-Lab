#!/bin/bash

# Create a new file
echo "Hello, world!" > example.txt
echo "Created file: example.txt"

# Display the content of the file
echo "Content of example.txt:"
cat example.txt

# Append more content to the file
echo "Appending additional content." >> example.txt
echo "Content appended to example.txt"

# Display the updated content of the file
echo "Updated content of example.txt:"
cat example.txt

# Create a copy of the file
cp example.txt example_copy.txt
echo "Created copy: example_copy.txt"

# Rename the original file
mv example.txt renamed_example.txt
echo "Renamed file: renamed_example.txt"

# Display the list of files in the directory
echo "Files in the directory:"
ls

# Move the copied file to a new directory
mkdir new_directory
mv example_copy.txt new_directory/
echo "Moved copy to new directory: new_directory/"

# Display the list of files in the new directory
echo "Files in new directory:"
ls new_directory

# Remove the original file and the new directory
rm renamed_example.txt
rm -r new_directory
echo "Removed files and directory: renamed_example.txt, new_directory/"
