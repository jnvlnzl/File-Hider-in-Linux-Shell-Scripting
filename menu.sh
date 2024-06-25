#!/bin/bash

while true; do
    clear

    echo '
  ___________           ___________
 /___________\         /___________\ 
|  _________  |       |  _________  |
| |         | |       | |         | |
| |         | |       | |         | |
| |         | |  -->  | |         | |
| |_________| |       | |_________| |
|             |       |             |
|_____________|       ._____________. 
    FOLDER                .FOLDER    
    '   

    echo "======== File Hide/Unhide Menu ========"
    echo "| 1. Hide or Unhide a file            |"
    echo "|-------------------------------------|"        
    echo "| 2. List Hidden Files                |"
    echo "|-------------------------------------|"
    echo "| 3. Navigate and Hide Files          |"
    echo "|-------------------------------------|"
    echo "| 4. View Hide/Unhide History         |"
    echo "|-------------------------------------|"
    echo "| 5. Exit                             |"
    echo "======================================="
    echo -n "Enter your choice (1-5): "
    read choice

    case $choice in
        1)
            bash hide_unhide.sh
            ;;
        2)
            bash list_hidden_files.sh
            ;;
        3)
            bash navigate_hidden.sh
            ;;
        4)
            bash history_hide_unhide.sh
            ;;
        5)
            echo "Exiting the program. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac

    echo
    echo "Operation completed."
    read -p "Press Enter to return to the main menu..."
done