#!/bin/bash

# Character information initialized with defaults
name=""
chapter=-1
seeds=-1
words=-1
machines=-1
saves=-1

# Play the intro cutscene
#bash ./0-prologue/IntroCutscene.bash

# Load the menu, and hang out on it until we get a name from loading or new game
while [ "$name" == "" ]
do
    bash ./0-prologue/MainMenu.bash
    case $? in
        1)
            # Case 1 is new game. Here we ask for a name, and create a save file
            echo "New Game!"
            echo "What do you want your name to be?"
            read name
            
            # If we already have a save with that name, as about overwriting
            if [ -f "gamesaves/$name" ]; then
                echo "A game with that name already exists. Overwrite? [y/n]"
                read yn
                if [[ "$yn" == "y" || "$yn" == "Y" ]]; then
                    echo "Erasing save..."
                else
                    # Setting name back to blank ensures we go through the menu again
                    name=""
                fi
            fi
            # Set all our character information and create the save file
            chapter=0
            seeds=0
            words=0
            machines=0
            echo """Current chapter - 0
Number of Seeds - 0
Number of Words Known - 0
Number of Machines Understood - 0""" > "gamesaves/$name"
            saves=$(ls -1 gamesaves | wc -l)
            ;;
        2)
            # If we are loading a game save, list out the save files and ask which one to choose
            echo "Load Game"
            name="good boi"
            ;;
        3)
            # Play the credits
            echo "Credits"
            ;;
        *)
            # Quit
            exit 0
            ;;
    esac
done
echo $name
