#!/bin/bash

# This is a little tool used to print the quest log, based on what is in inventory.

# Pass in the name as $1, so we can get the correct save file
name=$1

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../../gamesaves/$name"

chapter=$(bash $script_dir/CheckChapter.sh "$name")

# Print header
echo
echo "+-----------+"
echo "| QUEST LOG |"
echo "+-----------+"
echo

# Get the easy endgame ones out of the way first.
# Mark - Chapter 4
if [[ "$chapter" == "4" ]]; then
    echo "[-] Become a Dragon (Failed)"
    echo "[ ] Go home"
    exit 0
fi

# Mark - Chapter 5
if [[ "$chapter" == "5" ]]; then
    echo "[-] Become a Dragon (Failed)"
    echo "[X] Go home"
    echo "[ ] Save the farmer's son!"
    exit 0
fi

# MARK - Chapter 6
if [[ "$chapter" == "6" ]]; then
    echo "[-] Become a Dragon (Failed)"
    echo "[X] Go home"
    echo "[X] Save the farmer's son!"
    echo "[ ] Rest by the fireplace"
    exit 0
fi

# Display main quest here
echo "[ ] Become a Dragon"

# Mark - Chapter 1
if [[ "$chapter" == "1" || "$chapter" == "1a" || "$chapter" == "1b" || "$chapter" == "1c" || "$chapter" == "1d" ]]; then
    echo "   [ ] Get scales"
    if [[ "$chapter" == "1a" ]]; then
        echo "      [ ] Plant seeds"
        echo "      [ ] Water seeds"
        echo "      [ ] Harvest seeds"
        echo "      [ ] Roll in seeds"
    elif [[ "$chapter" == "1b" ]]; then
        echo "      [X] Plant seeds"
        echo "      [ ] Water seeds"
        echo "      [ ] Harvest seeds"
        echo "      [ ] Roll in seeds"
    elif [[ "$chapter" == "1c" ]]; then
        echo "      [X] Plant seeds"
        echo "      [X] Water seeds"
        echo "      [ ] Harvest seeds"
        echo "      [ ] Roll in seeds"
    elif [[ "$chapter" == "1d" ]]; then
        echo "      [X] Plant seeds"
        echo "      [X] Water seeds"
        echo "      [X] Harvest seeds"
        echo "      [ ] Roll in seeds"
    fi
    echo "   [ ] Learn to talk"
    echo "   [ ] Learn to fly"
fi

# Mark - Chapter 2
if [[ "$chapter" == "2" || "$chapter" == "2a" || "$chapter" == "2b" || "$chapter" == "2c" ]]; then
    echo "   [X] Get scales"
    echo "   [ ] Learn to talk"
    if [[ "$chapter" == "2a" ]]; then
        echo "      [ ] Find a language book"
        echo "      [ ] Read the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    elif [[ "$chapter" == "2b" ]]; then
        echo "      [X] Find a language book"
        echo "      [ ] Read the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    elif [[ "$chapter" == "2c" ]]; then
        echo "      [X] Find a language book"
        echo "      [X] Read the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    fi
    echo "   [ ] Learn to fly"
fi

# Mark - Chapter 3
if [[ "$chapter" == "3" || "$chapter" == "3a" || "$chapter" == "3b" || "$chapter" == "3c" ]]; then
    echo "   [X] Get scales"
    echo "   [X] Learn to talk"
    echo "   [ ] Learn to fly"
    if [[ "$chapter" == "3a" ]]; then
        echo "      [ ] Study pulley system"
        echo "      [ ] Adjust counterweight"
        echo "      [ ] Fly!"
    elif [[ "$chapter" == "3b" ]]; then
        echo "      [X] Study pulley system"
        echo "      [ ] Adjust counterweight"
        echo "      [ ] Fly!"
    elif [[ "$chapter" == "3c" ]]; then
        echo "      [X] Study pulley system"
        echo "      [X] Adjust counterweight"
        echo "      [ ] Fly!"
    fi
fi
