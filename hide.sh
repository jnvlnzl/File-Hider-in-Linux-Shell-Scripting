#!/bin/bash
echo "Hide File"

echo "Enter the directory path:" 
read dir

# Use current directory if user did not provide directory path
dir = ${dir:-.}

echo "Enter the filename in the specified directory"
read file

filepath = "$dir/$file"

# Verify if the file exists
if [-e "$filepath"]; then
	mv "$filepath" "$dir/.$file"
	echo "File successfully hidden."
else
	echo "File not found."
fi
