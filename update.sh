#! /usr/bin/bash

home_files=("xinitrc" "zprofile" "zshrc" "bin")

for file in "${home_files[@]}"
do
	rm -rf $file
	cp -r ~/.$file .
done


config_files=("BetterDiscord" "kitty" "neofetch" "nvim" "picom" "rofi" "st" "suckless" "sxhkd" "wallpapers")

for file in "${config_files[@]}"
do
	rm -rf config/$file
	cp -r ~/.config/$file config/.
done
