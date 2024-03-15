#!/bin/bash

# Create a directory
mkdir permissions_demo

# Create a file inside the directory
touch permissions_demo/file.txt

# Set permissions: owner can read, write, and execute; group can read and execute; others can only read
chmod 755 permissions_demo

# Verify permissions
ls -l permissions_demo

# Change permissions to allow owner to write
chmod u+w permissions_demo

# Verify permissions again
ls -l permissions_demo

# Remove write permission for group and others
chmod go-w permissions_demo

# Verify permissions again
ls -l permissions_demo

# Remove the directory
rm -r permissions_demo
