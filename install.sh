#!/bin/bash
echo "Setting up your Mac..."

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `install.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



if [ -z "$HOME" ]; then echo "\$HOME not set"; exit 1; fi
DOTFILES=$HOME/.dotfiles

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Setup mysql
brew tap homebrew/services
brew services start mysql@5.7

# Install useful key bindings and fuzzy completion for fzf
$(brew --prefix)/opt/fzf/install

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install Oh My Zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# https://github.com/robbyrussell/oh-my-zsh/pull/5893#issuecomment-419675844
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -o $DOTFILES/omz.sh
sed -i ''  '/echo/d' $DOTFILES/omz.sh
sed -i ''  '/env zsh/d' $DOTFILES/omz.sh
sh $DOTFILES/omz.sh
rm -rf $DOTFILES/omz.sh

sudo rm -rf ~/.zshrc > /dev/null 2>&1
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
mkdir ~/code
valet park ~/code

# Install global NPM packages
npm install --global yarn sass

# Install global python packages
pip install --upgrade pip
pip install yapf virtualenv

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
ln -sf ~/.dotfiles/.nvmrc ~/.nvmrc

# Install vim and MacVim
brew install vim --with-override-system-vi
brew install macvim --with-override-system-vim
brew link --overwrite macvim

sudo rm -rf ~/.vimrc > /dev/null 2>&1
mkdir -p ~/.vim/colors
ln -sf ~/.dotfiles/.vim/snippets ~/.vim
ln -sf ~/.dotfiles/.vim/colors/solarized.vim ~/.vim/colors
ln -sf ~/.dotfiles/.vimrc ~/.vimrc

# Install Vundle and install plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c VundleUpdate -c quitall

# Git stuff
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

# Other symlinks and stuff
sudo rm -rf ~/.config/karabiner/karabiner.json > /dev/null 2>&1
ln -sf ~/.dotfiles/karabiner/karabiner.json ~/.config/karabiner
ln -sf ~/.dotfiles/.my.cnf ~/.my.cnf
ln -sf ~/.dotfiles/.ctags ~/.ctags


# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
