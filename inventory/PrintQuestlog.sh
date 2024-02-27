#!/bin/bash

# This is a little tool used to print the quest log, based on what is in inventory.

# Pass in the name as $1, so we can get the correct save file
name=$1

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../gamesaves/$name"

chapter=$(bash $script_dir/CheckChapter.sh $name)
chapter_number=$(bash $script_dir/CheckChapter.sh $name)

# Print header
echo
echo "+-----------+"
echo "| QUEST LOG |"
echo "+-----------+"
echo

# Mark - Chapter 4
# If it's chapter 4 we can exit early.
if [[ "$chapter" == "4" ]]; then
    echo "   [ ] Save the farmer's son!"
    exit 0
fi

# MARK - Chapter 5
# If it's chapter 5, we can exit early.
if [[ "$chapter" == "5" ]]; then
    echo "[X] Become a Dragon"
    echo "[ ] Rest by the fireplace"
    exit 0
fi

# Display main quest here
echo "[ ] Become a Dragon"

# MARK - Chapter 0
# If it's chapter 0, we don't need to display much, and can exit early.
if [[ "$chapter" == "0" ]]; then
    echo "   [ ] Get scales"
    echo "   [ ] Learn to talk"
    echo "   [ ] Learn to fly"
    exit 0
fi

# Mark - Chapter 1
if [[ "$chapter" == "1a" || "$chapter" == "1b" || "$chapter" == "1c" || "$chapter" == "1d" ]]; then
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
elif [[ "$chapter" == "1e" ]]; then
    echo "   [X] Get scales"
    echo "   [ ] Learn to talk"
    echo "   [ ] Learn to fly"
    exit 0
fi

# Mark - Chapter 2
if [[ "$chapter" == "2a" || "$chapter" == "2b" || "$chapter" == "2c" ]]; then
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
elif [[ "$chapter" == "2d" ]]; then
    echo "   [X] Get scales"
    echo "   [X] Learn to talk"
    echo "   [ ] Learn to fly"
    exit 0
fi

# Mark - Chapter 3
if [[ "$chapter" == "3a" || "$chapter" == "3b" || "$chapter" == "3c" ]]; then
    echo "   [X] Get scales"
    echo "   [X] Learn to talk"
    echo "   [ ] Learn to fly"
    if [[ "$chapter" == "3a" ]]; then
        echo "      [ ] Study pulley system"
        echo "      [ ] Hook up harness"
        echo "      [ ] Fly!"
    elif [[ "$chapter" == "3b" ]]; then
        echo "      [X] Study pulley system"
        echo "      [ ] Hook up harness"
        echo "      [ ] Fly!"
    elif [[ "$chapter" == "3c" ]]; then
        echo "      [X] Study pulley system"
        echo "      [X] Hook up harness"
        echo "      [ ] Fly!"
    fi
elif [[ "$chapter" == "3d" ]]; then
    echo "   [X] Get scales"
    echo "   [X] Learn to talk"
    echo "   [X] Learn to fly"
    exit 0
fi