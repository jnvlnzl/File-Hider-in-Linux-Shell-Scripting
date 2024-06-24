#!/bin/bash
# modified with additional codes for history
#ask for directory path, list directory files, loop through the list, select from the list, verify if user wants to hide the selected file

echo "Select File to Hide from the Menu"

# Ask for the Directory
echo "Enter the directory path (Press Enter Key for current directory):"
read dir

# Use current directory if user did not provide directory path
dir=${dir:-.}

# List the directory files (access through array?)
files=(*)
echo -e "\nDirectory Contents:\n"

for i in ${files[@]}
do
	echo -e "$i\n"
done

# Use select command for menu creation
select file in ${files[@]}
do 
	# Show selected file 
	filePath="$dir/$file"
	hiddenPath="$dir/.$file"
	echo "Selected file: $filePath"

	echo -e "Confirm if you want to hide this file. \nPress 'Y' if Yes and 'N' for No."
	read choice

	case $choice in
		Y | y)
			mv "$filePath" "$hiddenPath"
			echo "File succesfully hidden."
			break
			;;
		N | n)
			echo "File will not be hidden."
			break
			;;
		*)
			echo -n "Only Y or N is accepted. The program will be terminated."
			break
			;;
	esac
	
done
