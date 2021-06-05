#!/bin/bash

set -e

function makeLinks() {
    ln -sfn ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -sfn ~/dotfiles/.vimrc ~/.vimrc
    ln -sfn ~/dotfiles/.Xmodmap ~/.Xmodmap 
    ln -sfn ~/dotfiles/.zsh_aliases ~/.zsh_aliases

    if [ ! -e ~/.config/nvim ]; then
        mkdir ~/.config/nvim
    fi
    ln -sfn ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
    ln -sfn ~/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
        
    if [ ! -e ~/.config/alacritty ]; then
        mkdir ~/.config/alacritty
    fi
    ln -sfn ~/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

    if [ ! -e ~/.config/i3 ]; then
        mkdir ~/.config/i3
    fi
    ln -sfn ~/dotfiles/.config/i3/config ~/.config/i3/config

    if [ ! -e ~/.config/i3blocks ]; then
        mkdir ~/.config/i3blocks
    fi
    ln -sfn ~/dotfiles/.config/i3blocks/config ~/.config/i3blocks/config

    if [ ! -e ~/.config/blocklets ]; then
        mkdir ~/.config/blocklets
    fi
    ln -sfn ~/dotfiles/.config/blocklets/battery ~/.config/blocklets/battery

    if [ ! -e ~/.oh-my-zsh/custom/themes/ ]; then
	    mkdir ~/.oh-my-zsh/custom/themes/
    fi
    ln -sfn ~/dotfiles/my_theme.zsh-theme ~/.oh-my-zsh/custom/themes/my_theme.zsh-theme

    xmodmap ~/.Xmodmap;
}

read -rp "This may overwrite files. proceed? [y/n] " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    makeLinks
fi;
