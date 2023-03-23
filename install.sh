#!/bin/sh
# Inspired by https://github.com/driesvints/dotfiles

echo "Setting up your Mac..."

echo "Some of these commands require root, so please auth once:"
sudo -v

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
echo "Install Node LTS"
sudo n lts

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup toolchain install stable
rustup default stable


# Make fish the default shell
if ! grep $(which fish) /etc/shells; then
    echo "Adding fish to /etc/shells"
    echo $(which fish) | sudo tee -a /etc/shells
fi
sudo chsh -s $(which fish)
