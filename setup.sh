#!/bin/bash

set -e
this_user="$(uname -n)"

function linkDotToConfigDir() {
    ln -sfn ~/dotfiles/.config/$1 ~/.config/
}

function linkDotToHomeDir() {
    ln -sfn ~/dotfiles/$1 ~/
}

function makeLinks() {

    linkDotToConfigDir "nvim"
    linkDotToConfigDir "kitty"

    linkDotToHomeDir ".tmux.conf"
    linkDotToHomeDir ".zsh_aliases"

    if [ "$this_user" = "laon-macbook"  ] || [ "$this_user" = "laon-surface"  ] || [ "$this_user" = "laon-pc" ] || [ "$this_user" = "laonpbp" ] || [ "$this_user" = "laon-laptop" ]; then
        
        linkDotToConfigDir "i3"
        linkDotToConfigDir "i3blocks"
        linkDotToConfigDir "blocklets"
        linkDotToConfigDir "sway"
        linkDotToConfigDir "waybar"
        linkDotToConfigDir "rofi"
        linkDotToConfigDir "wofi"
        linkDotToConfigDir "alacritty"

        linkDotToHomeDir "scripts"
        linkDotToHomeDir ".Xmodmap"

    fi
}

function linkOhMyZshTheme(){

    if [ ! -e ~/.oh-my-zsh/custom/themes/ ]; then
	    mkdir ~/.oh-my-zsh/custom/themes/
    fi

    ln -sfn ~/dotfiles/my_theme.zsh-theme ~/.oh-my-zsh/custom/themes/my_theme.zsh-theme
}

function checkForConfigFolder(){

    if [ ! -e ~/.config/ ]; then
	    mkdir ~/.config/
    fi

}

read -rp "This may overwrite files. proceed? [y/n] " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then

    checkForConfigFolder
    makeLinks
    linkOhMyZshTheme

    if [ "$this_user" = "laon-macbook"  ] || [ "$this_user" = "laon-surface"  ] || [ "$this_user" = "laon-pc" ] || [ "$this_user" = "laonpbp" ] || [ "$this_user" = "laon-laptop" ]; then
	    xmodmap ~/.Xmodmap;
    fi
fi;
