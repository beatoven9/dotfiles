#!/bin/bash

set -e
this_user=$(uname -n)

function makeFolders(){
    if [ ! -e ~/.config/nvim ]; then
        mkdir ~/.config/nvim
    fi

    if [ ! -e ~/.config/nvim/ftplugin ]; then
        mkdir ~/.config/nvim/ftplugin
    fi

    if [ ! -e ~/.oh-my-zsh/custom/themes/ ]; then
	    mkdir ~/.oh-my-zsh/custom/themes/
    fi

    if [ ! -e ~/.config/alacritty ]; then
        mkdir ~/.config/alacritty
    fi

    if [ "$this_user" == "laon-pc" ] || ["$this_user" == "laon-pbp"]; then

	    if [ ! -e ~/.config/i3 ]; then
		mkdir ~/.config/i3
	    fi
	    if [ ! -e ~/.config/blocklets ]; then
		mkdir ~/.config/blocklets
	    fi
	    if [ ! -e ~/.config/i3blocks ]; then
		mkdir ~/.config/i3blocks
	    fi
    fi
}

function makeLinks() {
    ln -sfn ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -sfn ~/dotfiles/.vimrc ~/.vimrc
    ln -sfn ~/dotfiles/.zsh_aliases ~/.zsh_aliases


    ln -sfn ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
    ln -sfn ~/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
    ln -sfn ~/dotfiles/.config/nvim/ftplugin/javascript.vim ~/.config/nvim/ftplugin/javascript.vim
    ln -sfn ~/dotfiles/.config/nvim/ftplugin/html.vim ~/.config/nvim/ftplugin/html.vim
    ln -sfn ~/dotfiles/.config/nvim/ftplugin/css.vim ~/.config/nvim/ftplugin/css.vim
        
    ln -sfn ~/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml




    ln -sfn ~/dotfiles/my_theme.zsh-theme ~/.oh-my-zsh/custom/themes/my_theme.zsh-theme




    if [ "$this_user" == "laon-pc" ] || ["$this_user" == "laon-pbp"]; then

	    ln -sfn ~/dotfiles/.Xmodmap ~/.Xmodmap 
	    ln -sfn ~/dotfiles/.config/i3/config ~/.config/i3/config
	    ln -sfn ~/dotfiles/.config/i3blocks/config ~/.config/i3blocks/config
	    ln -sfn ~/dotfiles/.config/blocklets/memory ~/.config/blocklets/memory
	    ln -sfn ~/dotfiles/.config/blocklets/disk ~/.config/blocklets/disk
	    ln -sfn ~/dotfiles/.config/blocklets/getuser ~/.config/blocklets/getuser
	    ln -sfn ~/dotfiles/.config/blocklets/battery ~/.config/blocklets/battery
	    xmodmap ~/.Xmodmap;
    fi
}


read -rp "This may overwrite files. proceed? [y/n] " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    makeFolders
    makeLinks
fi;
