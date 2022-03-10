#!/bin/bash

set -e
this_user="$(uname -n)"

function makeFolders(){
    if [ ! -e ~/.config/nvim ]; then
        mkdir ~/.config/nvim
    fi

    if [ ! -e ~/.config/nvim/lua ]; then
        mkdir ~/.config/nvim/lua
    fi

    if [ ! -e ~/scripts ]; then
        mkdir ~/scripts
    fi

    if [ ! -e ~/.config/nvim/ftplugin ]; then
        mkdir ~/.config/nvim/ftplugin
    fi

    if [ ! -e ~/.oh-my-zsh/custom/themes/ ]; then
	    mkdir ~/.oh-my-zsh/custom/themes/
    fi


    if [ ! -e ~/.config/kitty ]; then
        mkdir ~/.config/kitty
    fi
    

    if [ "$this_user" = "laon-pc" ] || [ "$this_user" = "laon-pbp" ] || [ "$this_user" = "laon-laptop" ]; then

        if [ ! -e ~/.config/waybar ]; then
            mkdir ~/.config/waybar
        fi

        if [ ! -e ~/.config/rofi ]; then
            mkdir ~/.config/rofi
        fi

	    if [ ! -e ~/.config/i3 ]; then
		mkdir ~/.config/i3
	    fi

	    if [ ! -e ~/.config/blocklets ]; then
		mkdir ~/.config/blocklets
	    fi

	    if [ ! -e ~/.config/i3blocks ]; then
		mkdir ~/.config/i3blocks
	    fi

        if [ ! -e ~/.config/sway ]; then
            mkdir ~/.config/sway
        fi
        
        if [ ! -e ~/.config/alacritty ]; then
            mkdir ~/.config/alacritty
        fi
    fi
}

function makeLinks() {
    ln -sfn ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -sfn ~/dotfiles/.vimrc ~/.vimrc
    ln -sfn ~/dotfiles/.zsh_aliases ~/.zsh_aliases

    ln -sfn ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
    ln -sfn ~/dotfiles/.config/nvim/lua/init.lua ~/.config/nvim/lua/init.lua
    ln -sfn ~/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
    ln -sf ~/dotfiles/.config/nvim/ftplugin/* ~/.config/nvim/ftplugin/
        
    ln -sfn ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
    ln -sfn ~/dotfiles/.config/kitty/theme.conf ~/.config/kitty/theme.conf

    ln -sfn ~/dotfiles/my_theme.zsh-theme ~/.oh-my-zsh/custom/themes/my_theme.zsh-theme

    ln -sf ~/dotfiles/scripts/* ~/scripts/


    if [ "$this_user" = "laon-pc" ] || [ "$this_user" = "laon-pbp" ] || [ "$this_user" = "laon-laptop" ]; then
	    ln -sfn ~/dotfiles/.Xmodmap ~/.Xmodmap 
	    ln -sfn ~/dotfiles/.config/i3/config ~/.config/i3/config
	    ln -sfn ~/dotfiles/.config/sway/config ~/.config/sway/config
	    ln -sfn ~/dotfiles/.config/waybar/config ~/.config/waybar/config
	    ln -sfn ~/dotfiles/.config/waybar/style.css ~/.config/waybar/style.css
	    ln -sfn ~/dotfiles/.config/i3blocks/config ~/.config/i3blocks/config
	    ln -sfn ~/dotfiles/.config/blocklets/memory ~/.config/blocklets/memory
	    ln -sfn ~/dotfiles/.config/blocklets/disk ~/.config/blocklets/disk
	    ln -sfn ~/dotfiles/.config/blocklets/getuser ~/.config/blocklets/getuser
	    ln -sfn ~/dotfiles/.config/blocklets/battery ~/.config/blocklets/battery
	    ln -sfn ~/dotfiles/.config/blocklets/battery-macbook ~/.config/blocklets/battery-macbook
        ln -sfn ~/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
        ln -sfn ~/dotfiles/.config/rofi/config.rasi ~/.config/rofi/config.rasi
	    xmodmap ~/.Xmodmap;
    fi
}


read -rp "This may overwrite files. proceed? [y/n] " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    makeFolders
    makeLinks
fi;
