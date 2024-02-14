#!/bin/bash


# An animation interpreter inspired by https://github.com/octobanana/asciimation but simplified and written in bash
# Takes 2 parameters, $1 is the location of a file containing frames, separated by the substring "FRAME"
# $2 is the time that should be slept between frames (smaller number is higher framerate)

# Check if file exists and is readable
if [[ ! -r "$1" ]]; then
    echo "Error: File not found or not readable"
    exit 1
fi

# This allows us to use the same "class" for credit scrolling as cutscenes by specifying "scroll" in $3
if [[ "$3" == "scroll" ]]; then
    # Enter 24 linebreaks to get the cursor to the bottom of the screen
    for i in {1..24}
    do
        echo " "
    done

    # Read the file line by line and just print the lines consecutively.
    while IFS= read -r line; do

        # Print the content of the frame and pause
        echo "$line"
        sleep $2
    done < "$1"

elif [[ "$3" == "print" ]]; then

    # Read the file line by line
    while IFS= read -r line; do

        # Iterate over each character in the line
        for (( i=0; i<${#line}; i++ )); do
            echo -n "${line:i:1}"
            sleep 0.03
        done
        sleep $2
        echo
    done < "$1"

# Regular cutscenes are here.
else
    # Read the file line by line
    while IFS= read -r line; do

        # Check if the line contains the frame marker
        if [[ $line == "FRAME"* ]]; then
            # If it's a frame marker, sleep the required time and clear the screen
            sleep $2
            clear
            continue
        fi
        # Print the content of the frame
        echo "$line"
    done < "$1"
fi


