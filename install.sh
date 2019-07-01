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

# Make fish the default shell
if ! grep $(which fish) /etc/shells; then
    echo "Adding fish to /etc/shells"
    echo $(which fish) | sudo tee -a /etc/shells
fi
chsh -s $(which fish)

# Remove old conifg, symlink from here
rm -rf $HOME/.config/fish
ln -s $HOME/.dotfiles/.config/fish $HOME/.config/fish
