#!/bin/sh
# Inspired by https://github.com/driesvints/dotfiles

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Setup fish config
rm -rf $HOME/.config/fish
ln -s $HOME/.dotfiles/.config/fish $HOME/.config/fish

# Setup gitconfig
rm $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# Install or active the LTS node release
echo "Install latest Node LTS release, requires password"
sudo n lts

# Make fish the default shell
if ! grep $(which fish) /etc/shells; then
    echo "Adding fish to /etc/shells"
    echo $(which fish) | sudo tee -a /etc/shells
fi
chsh -s $(which fish)