#!/bin/bash

name=""

bash ./0-prologue/IntroCutscene.bash
bash ./0-prologue/MainMenu.bash

case $? in
    1)
        # Commands to execute if expression matches pattern1
        echo "New Game!"
        echo "What do you want your name to be?"
        read name
        ;;
    2)
        # Commands to execute if expression matches pattern2
        echo "Load Game"
        name="good boi"
        ;;
    3)
        # Commands to execute if expression matches either pattern3 or pattern4
        echo "Credits"
        ;;
    *)
        # Default commands to execute if none of the patterns match
        echo "Exit"
        ;;
esac

echo $name

