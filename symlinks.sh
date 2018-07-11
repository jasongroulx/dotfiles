#!/bin/zsh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#==============
# Remove old dot flies
#==============
sudo rm -rf ~/Library/Application\ Support/Spectacle/Shortcuts.json > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.config/karabiner/karabiner.json > /dev/null 2>&1

#==============
# Create symlinks
#==============
ln -sf ~/.dotfiles/Spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.nvmrc ~/.nvmrc
ln -sf ~/.dotfiles/.my.cnf ~/.my.cnf
ln -sf ~/.dotfiles/karabiner/karabiner.json ~/.config/karabiner
