#!/bin/bash


# An animation interpreter inspired by https://github.com/octobanana/asciimation but simplified and written in bash
# Takes 2 parameters, $1 is the location of a file containing frames, separated by the substring "FRAME"
# $2 is the time that should be slept between frames (smaller number is higher framerate)

clearScreen() {
    # Enter 24 linebreaks to get the cursor to the bottom of the screen
    for i in {1..24}
    do
        echo " "
    done
}

# Check if file exists and is readable
if [[ ! -r "$1" ]]; then
    echo "Error: File not found or not readable"
    exit 1
fi

# This allows us to use the same "class" for credit scrolling as cutscenes by specifying "scroll" in $3
if [[ "$3" == "scroll" ]]; then
    clearScreen

    # Read the file line by line and just print the lines consecutively.
    while IFS= read -r line; do

        # Print the content of the frame and pause
        echo "$line"
        sleep $2
    done < "$1"

elif [[ "$3" == "print" ]]; then
    clearScreen

    # Read the file line by line
    while IFS= read -r line; do
        
        # Give us linebreaks, since we're doing printf %s below
        echo
        
        # Iterate over each character in the line
        for (( i=0; i<${#line}; i++ )); do
            printf "%s" "${line:i:1}"
            sleep 0.03
        done
        if [[ ${#line} -gt 1 ]]; then
            sleep $2
        fi
    done < "$1"

    sleep 1
    echo
    echo
    echo "Press enter to continue..."
    read

# Regular cutscenes are here.
else
    # Read the file line by line
    while IFS= read -r line; do

        # Check if the line contains the frame marker
        if [[ $line == "FRAME"* ]]; then
            # If it's a frame marker, sleep the required time and clear the screen
            sleep $2
            clearScreen
            continue
        fi
        # Print the content of the frame
        echo "$line"
    done < "$1"
fi


