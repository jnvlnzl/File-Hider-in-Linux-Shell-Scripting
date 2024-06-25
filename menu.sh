#!/bin/bash

while true; do
    clear

    echo '
  ___________           ___________
 /___________\         /___________\ 
|  ---------  |       | ----------- |
| |         | |       | |\  / \  /| |
| |         | |       | | \/   \/ | |
| |         | |  -->  | | /\  / \ | |
| |         | |       | |/  \/   \| |
|  ---------  |       | ----------- |
|_____________|       ._____________. 
     FILE                 .FILE    
    '   

    echo "======= File Hide/Unhide Menu ======="
    echo "| 1. Hide or Unhide a File          |"
    echo "|-----------------------------------|"        
    echo "| 2. List Hidden Files              |"
    echo "|-----------------------------------|"
    echo "| 3. Navigate and Hide Files        |"
    echo "|-----------------------------------|"
    echo "| 4. View Hide/Unhide History       |"
    echo "|-----------------------------------|"
    echo "| 5. Exit                           |"
    echo "====================================="
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
            echo "Exiting the program. Thank You!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Select a number from 1 to 5."
            ;;
    esac

    echo
    echo "Function executed."
    read -p "Press Enter to return to the main menu..."
done
