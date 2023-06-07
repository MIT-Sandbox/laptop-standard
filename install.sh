#!/bin/bash

# Elevate privileges

sudo -v

# Install apps from macapps.link

curl -s 'https://api.macapps.link/en/firefox-chrome-vscode-iterm-slack-whatsapp' | sh

# Install brew

command -v brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install brew packages

packages="gnu-sed cmake git node neovim"

for package in $packages; do
  brew install $package
done

casks="adobe-acrobat-reader microsoft-office zoom"

for cask in $casks; do
  brew install --cask $cask
done

# Reset sudo timestamp to expire immediately after the script finishes
sudo -k
