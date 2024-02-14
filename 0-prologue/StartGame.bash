#!/bin/bash

# MARK - Variables

# Character information initialized with defaults
name=""
chapter=-1
seeds=-1
words=-1
machines=-1
saves=-1

# MARK - Cutscene

# Play the intro cutscene
#bash ./0-prologue/IntroCutscene.bash

# MARK - Menu

# Load the menu, and hang out on it until we get a name from loading or new game
while [ "$name" == "" ]
do
    bash ./0-prologue/MainMenu.bash
    case $? in

    # MARK - New Game
        1)
            # Case 1 is new game. Here we ask for a name, and create a save file
            echo
            echo "New Game!"
            echo
            echo "What do you want your name to be?"
            echo
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

    # MARK - Load Game
        2)
            # If we are loading a game save, list out the save files and ask which one to choose
            echo
            echo "What game save would you like to load? Type the name exactly."
            echo "Existing saves:"
            echo
            ls -1 gamesaves
            echo
            read savename

            # Check to be sure a save with that name actually exists. If it doesn't, back to main menu.
            if [ -f "gamesaves/$savename" ]; then
                echo "Loading $savename..."
                name=$savename

                # This is a bit inelegant, but it felt like a good time to introduce `awk`, which is
                # a requirement of the assignment.

                # Set the field separator to '-' and parse the file, populating variables as we go.
                # Read the file using awk and assign values to variables
                read_chapter=$(awk -F ' - ' '/Current chapter/ {print $2}' "gamesaves/$savename")
                read_seeds=$(awk -F ' - ' '/Number of Seeds/ {print $2}' "gamesaves/$savename")
                read_words=$(awk -F ' - ' '/Number of Words Known/ {print $2}' "gamesaves/$savename")
                read_machines=$(awk -F ' - ' '/Number of Machines Understood/ {print $2}' "gamesaves/$savename")

                # Assign values to Bash variables, removing leading/trailing whitespace
                chapter=$(echo "$read_chapter" | tr -d '[:space:]')
                seeds=$(echo "$read_seeds" | tr -d '[:space:]')
                words=$(echo "$read_words" | tr -d '[:space:]')
                machines=$(echo "$read_machines" | tr -d '[:space:]')
            else
                echo
                echo "Sorry, no save with that name exists."
                echo
                echo "Try again."
                sleep 1.5
            fi
            ;;
    
    # MARK - Credits
        3)
            # Play the credits
            bash ./animate.bash ascii/credits.anim .3 scroll
            ;;

    # MARK - Exit game
        *)
            # Quit
            echo "See you again soon!"
            exit 0
            ;;
    esac
done

# MARK - Game Start

# At this point, we should have all the information we require to dive into the game.
echo "Game start!"
echo "Name: $name"
echo "Current chapter: $chapter"
echo "Number of seeds owned: $seeds"
echo "Number of words known: $words"
echo "Number of machines understood: $machines"

