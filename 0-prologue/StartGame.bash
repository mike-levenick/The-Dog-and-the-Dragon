#!/bin/bash

name=""
chapter=-1
seeds=-1
words=-1
machines=-1
saves=-1

#bash ./0-prologue/IntroCutscene.bash


while [ "$name" == "" ]
do
    bash ./0-prologue/MainMenu.bash
    case $? in
        1)
            # Commands to execute if expression matches pattern1
            echo "New Game!"
            echo "What do you want your name to be?"
            read name
            if [ -f "gamesaves/$name" ]; then
                echo "A game with that name already exists. Overwrite? [y/n]"
                read yn
                if [[ "$yn" == "y" || "$yn" == "Y" ]]; then
                    echo "Erasing save..."
                else
                    name=""
                fi
            fi
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
            exit 0
            ;;
    esac
done
echo $name

