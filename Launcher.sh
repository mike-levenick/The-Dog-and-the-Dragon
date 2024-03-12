#!/bin/bash

# Store our directory name so we can launch from anywhere
script_dir="$(dirname "$0")"

# MARK - Variables
# Character information initialized with defaults
name=""
chapter=-1

# Using an int intead of bool here, because I just think they work better in Bash.
newgame=0

# Ensure we have the right resolution for cutscenes to work.
sh $script_dir/utils/CheckResolution.sh

# MARK - Cutscene

# Allow the cutscene to be skipped, for testing and for veteran players
if [[ "$1" != "skip" ]]; then
    # Play the intro cutscene. This is a separate script to keep things tidy.
    bash $script_dir/utils/animation/IntroCutscene.sh
fi

# MARK - Menu

# Load the menu, and hang out on it until we get a name from loading or new game
while [ "$name" == "" ]
do
    bash $script_dir/utils/MainMenu.sh
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
            if [ -f "$script_dir/gamesaves/$name" ]; then
                echo "A game with that name already exists. Overwrite? [y/n]"
                echo
                read yn
                if [[ "$yn" == "y" || "$yn" == "Y" ]]; then
                    echo "Erasing save..."
                else
                    # Setting name back to blank ensures we go through the menu again
                    name=""
                fi
            fi

            # Set all our character information and create the save file
            chapter=1
            newgame=1

            echo """Current chapter - 1
paws""" > "$script_dir/gamesaves/$name"
            saves=$(ls -1 $script_dir/gamesaves | wc -l)
            ;;

    # MARK - Load Game
        2)
            # Check if any gamesaves exist. If they do not, inform and break early.
            if [[ -z $(find "$script_dir/gamesaves" -mindepth 1 -type f -not -name ".*") ]]; then
                echo "Sorry. No gamesaves found. Returning to main menu."
                sleep 1.5
                continue
            fi

            # If we are loading a game save, list out the save files and ask which one to choose
            echo
            echo "What game save would you like to load? Type the name exactly."
            echo "Existing saves:"
            echo
            ls -1 $script_dir/gamesaves
            echo
            read savename

            # Check to be sure a save with that name actually exists. If it doesn't, back to main menu.
            if [ -f "$script_dir/gamesaves/$savename" ]; then
                echo "Loading $savename..."
                name=$savename

                # Get the current chapter to load
                chapter=$(bash $script_dir/utils/inventory/CheckChapter.sh "$name")
            else
                echo
                echo "Sorry, no save with that name exists."
                echo
                echo "Try again."
                sleep 1.5
            fi
            ;;
    # MARK - Content Warning
        3)
            bash $script_dir/utils/animation/animate.sh $script_dir/utils/animation/dialogue/triggerwarn.dia 1 print
            ;;
    
    # MARK - Credits
        4)
            # Play the credits
            bash $script_dir/utils/animation/animate.sh $script_dir/utils/animation/cutscenes/credits.anim .1 scroll
            echo
            printf "%s" "Press enter to return to Main Menu."
            read
            ;;

    # MARK - Exit game
        *)
            # Technically this only happens on a 5, but doing it as a default helps us justincase.
            echo "See you again soon!"
            exit 0
            ;;
    esac
done

# If it's a new game, play the opening dialogue
if [[ "$newgame" == "1" ]]; then
    bash $script_dir/utils/animation/StoryOpenCutscene.sh
    sleep 1
fi

# MARK - Game Start

# At this point, we should have all the information we require to dive into the game.
# Clear the screen
for i in {1..24}; do
   echo
done

echo "Hello $name. You are in chapter $chapter."
echo
echo "Hint: If you're ever lost, you can try to \`look around\` for clues, or"
echo "check your \`questlog\` for help."
echo
echo "Use the \`help\` command for more information about what you can do."
echo
echo "You find yourself in the barnyard which you call home. What do you want to do?"

bash $script_dir/areas/barnyard.area "$name"
