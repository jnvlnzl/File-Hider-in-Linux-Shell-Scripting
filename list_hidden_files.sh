#!/bin/bash
echo "List Hidden Files"

echo "Enter the directory path (Press Enter Key for current directory):"
read dir

# Use current directory if user did not provide directory path
dir=${dir:-.}

# Verify if the directory exists
if [ -d "$dir" ]; then
	hidden_files=$(ls -ld "$dir"/.* | grep '^[-]')
	if [ -n "$hidden_files" ]; then
		echo "$hidden_files" | awk '{print $9}' # Print 9th column in ls (filename only)
	else
		echo "No hidden files found in $dir."
	fi
else
	echo "Directry not found."
fi
