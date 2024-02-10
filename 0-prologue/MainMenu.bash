#!/bin/bash

printmenu() {
echo """
Main Menu. Enter the number for your opion, and press enter.

1. New Game
2. Load Game
3. Credits
4. Exit
"""
}

printmenu
read option

while ! [[ $option =~ ^[1-4]+$ ]]; do
    clear
    echo "I'm sorry, that's not a valid option. Please try again."
    printmenu
    read -r option
done

echo "You entered: $option"
exit $option

