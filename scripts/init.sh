#!/bin/bash
set -e

cd ~

# Set bash
chsh -s /bin/bash

# Install Homebrew
if [ ! -f /usr/local/bin/brew ]
  then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  else
    echo "Homebrew skipped because it is already installed."
fi

# Clone my dotfiles
if [ ! -d ~/dotfiles ]
  then
    echo "Cloning dotfiles..."
    git clone git@github.com:watsuyo/dotfiles.git
  else
    echo "dotfiles already cloned."
fi

# Install some software
echo "Installing some software & library..."
brew bundle -v --file=../Brewfile

echo "Symlinking dotfiles..."
sh script/link.sh
