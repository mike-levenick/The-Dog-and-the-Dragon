#!/bin/bash

script_dir="$(dirname "$0")"

bash $script_dir/animate.bash $script_dir/art/cutscenes/title-slide1-thedog.anim .1
bash $script_dir/animate.bash $script_dir/art/cutscenes/title-slide2-dogwalk.anim .05
bash $script_dir/animate.bash $script_dir/art/cutscenes/title-slide3-dogwag.anim .1
sleep 1
bash $script_dir/animate.bash $script_dir/art/cutscenes/title-slide4-andthedragon.anim .25
sleep 1