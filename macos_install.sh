#!/bin/bash
echo OS X New Install Script
read -p "Press any key to continue..." -n1 -s
echo '\n'

# Default MacOS Settings

# Install brew and apps
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Homebrew/bundle
brew bundle

brew cleanup
brew update

# Install pip apps

pip3 install mps-youtube
pip3 install youtube-dl






