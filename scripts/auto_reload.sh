#!/bin/bash

#echo $HOME
vimf="$HOME/.vimrc"
i3f="$HOME/.config/i3/config"
zshf="$HOME/.zshrc"
xresourcef="$HOME/.Xresources"
testf="/mnt/wannacry/learn/linux/automation/dotfiles/test"

reloadconf() {
	#echo $1 $2
	echo $1 | entr -a $2
}

#reloadconf $testf "notify-send hello" &
reloadconf $i3f "i3-msg restart 1>/dev/null 2>/dev/null" &
reloadconf $xresourcef "xrdb $xresourcef" &
reloadconf $zshf "source $zshf" &

