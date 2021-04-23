#!/usr/local/bin/zsh
export MYVIMRC=~/.jasongroulx/vim/init.vim
export VIMFILES=~/.jasongroulx/vim/portable
export VIMDOTFILES=~/.jasongroulx/vim

[ "$(grep '^alias jvim=' ~/.zshrc)" ] || echo "\n# Load nvim with .jasongroulx config \nalias jvim='nvim -u ~/.jasongroulx/vim/init.vim'" >> ~/.zshrc

# nvim -u ~/.jasongroulx/vim/init.vim 
