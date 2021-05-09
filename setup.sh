#!/bin/bash

set -e

function makeLinks() {
    ln -sfn ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -sfn ~/dotfiles/.vimrc ~/.vimrc
    ln -sfn ~/dotfiles/.Xmodmap ~/.Xmodmap 
    ln -sfn ~/dotfiles/.zshrc ~/.zshrc
    ln -sfn ~/dotfiles/.zsh_aliases ~/.zsh_aliases

    ln -sfn ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
    ln -sfn ~/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
    ln -sfn ~/dotfiles/.config/i3/config ~/.config/i3/config


    tmux source-file ~/.tmux.conf
    xmodmap ~/.Xmodmap;
}

read -rp "This may overwrite files. proceed? [y/n] " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    makeLinks
fi;
