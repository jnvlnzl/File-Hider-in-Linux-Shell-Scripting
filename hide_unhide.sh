#!/bin/bash

echo "Hide or Unhide a File"
echo "Press 'H' to Hide a file and 'U' to Unhide a File"
read choice

echo "Enter the directory path (Press Enter Key for current directory):"
read dir

# Use current directory if user did not provide one
dir=${dir:-.}

echo "Enter the filename to Hide/Unhide"
read file

# Concatenate to create paths
filePath="$dir/$file"
hiddenPath="$dir/.$file"

# Hide file function
hide_file() {
	if [ -e "$filePath" ]; then
		mv "$filePath" "$hiddenPath"
		echo "File succesfully hidden."
	else
		echo "File not found."
	fi
}

# Unhide file function
unhide_file() {
	if [ -e "$hiddenPath" ]; then
		mv "$hiddenPath" "$filePath"
		echo "File succesfully unhidden."
	else
		echo "Hidden file not found."
	fi
}

# Check if user pressed H or U
if [ "$choice" == "H" ]  || [ "$choice" == "h" ]; then
	hide_file
elif [ "$choice" == "U" ] || [ "$choice" == "u" ]; then
	unhide_file
else
	echo "Invalid Character. Enter only 'H' or 'U'"
fi

