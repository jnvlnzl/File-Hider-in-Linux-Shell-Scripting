#!/bin/bash
echo "List Hidden Files"

echo "Enter the directory path (Press Enter Key for current directory):"
read dir

dir=${dir:-.}

# Verify if the directory exists
if [ -d "$dir" ]; then
	hidden_files=$(ls -ld "$dir"/.* | grep -E '^d|^-')
	if [ -n "$hidden_files" ]; then
		echo "$hidden_files" | awk '{print $9}'
	else
		echo "No hidden files found in $dir."
	fi
else
	echo "Directry not found."
fi
