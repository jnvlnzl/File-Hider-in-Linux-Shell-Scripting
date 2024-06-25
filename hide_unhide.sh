#!/bin/bash
# modified with additional codes for history

#check hidden history file
if ! test -e .$hideUnhideHistory; then 
	touch .hideUnhideHistory
fi

echo "HIDE or UNHIDE a file"
echo "Press 'H' to HIDE a file and 'U' to UNHIDE a file"
read choice

echo "Enter the directory path (Press Enter Key for current directory):"
read dir

# Use current directory of user did not provide one
dir=${dir:-.}

echo "Enter the filename to HIDE/UNHIDE"
read file

# Concatenate to create paths
filePath="$dir/$file"
hiddenPath="$dir/.$file"

# HIDE file function
hide_file() {
	if [ -e "$filePath" ]; then
	
		# record HIDE activity
		mv .hideUnhideHistory hideUnhideHistory
		date >> hideUnhideHistory
		echo "$file is hidden." >> hideUnhideHistory
		echo "" >> hideUnhideHistory
		mv hideUnhideHistory .hideUnhideHistory
		
		# actual HIDE activity
		mv "$filePath" "$hiddenPath"
		echo "File successfully hidden."
		
	else
		echo "File not found."
	fi
}

# UNHIDE file function
unhide_file() {
	if [ -e "$hiddenPath" ]; then
		
		# record UNHIDE activity
		mv .hideUnhideHistory hideUnhideHistory
		date >> hideUnhideHistory
		echo "$file is unhidden." >> hideUnhideHistory
		echo "" >> hideUnhideHistory
		mv hideUnhideHistory .hideUnhideHistory
		
		# actual UNHIDE activity
		mv "$hiddenPath" "$filePath"
		echo "File successfully unhidden."
	else
		echo "Hidden file not found."
	fi
}

# Check if user pressed H or U
if [ "$choice" == "H" ] || [ "$choice" == "h" ]; then
	hide_file
elif [ "$choice" == "U" ] || [ "$choice" == "u" ]; then
	unhide_file
else
	echo "Invalid character. Enter only 'H' or 'U'"
fi
