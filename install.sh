#!/bin/sh
# Inspired by https://github.com/driesvints/dotfiles

echo "Setting up your Mac..."

echo "Some of these commands require root, so please auth once:"
sudo -v

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

# Set iterm2 settings
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Install or active the LTS node release
echo "Install Node LTS"
sudo n lts

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustup toolchain install stable
rustup default stable

# npm hosted stuff
yarn global add azurite
yarn global add esy
yarn global add ios-deploy
yarn global add now
yarn global add smee-client

# Make fish the default shell
if ! grep $(which fish) /etc/shells; then
    echo "Adding fish to /etc/shells"
    echo $(which fish) | sudo tee -a /etc/shells
fi
sudo chsh -s $(which fish)
