#!/bin/bash

script_dir="$(dirname "$0")"


bash $script_dir/animate.sh $script_dir/dialogue/dialogue1-storyopen.dia 1 print
sleep 1.5
bash $script_dir/animate.sh $script_dir/cutscenes/story-open1-enter-barn.anim .05
sleep 1.5
bash $script_dir/animate.sh $script_dir/cutscenes/story-open3-exit-barn.anim .05
sleep 2