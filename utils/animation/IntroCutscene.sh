#!/bin/bash

script_dir="$(dirname "$0")"

bash $script_dir/animate.sh $script_dir/cutscenes/title-slide1-thedog.anim .1
bash $script_dir/animate.sh $script_dir/cutscenes/title-slide2-dogwalk.anim .05
bash $script_dir/animate.sh $script_dir/cutscenes/title-slide3-dogwag.anim .1
sleep 1
bash $script_dir/animate.sh $script_dir/cutscenes/title-slide4-andthedragon.anim .25
bash $script_dir/animate.sh $script_dir/cutscenes/title-slide5-dogwag.anim .1
sleep 1