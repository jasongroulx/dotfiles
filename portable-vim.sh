#!/bin/zsh
export MYVIMRC=~/.jasongroulx/vim/init.vim
export VIMFILES=~/.jasongroulx/vim/portable
export VIMDOTFILES=~/.jasongroulx/vim

[ "$(grep '^alias jvim=' ~/.zshrc)" ] || echo "\n# Load nvim with .jasongroulx config \nalias jvim='~/.jasongroulx/portable-vim.sh'" >> ~/.zshrc

nvim -u ~/.jasongroulx/vim/init.vim 
