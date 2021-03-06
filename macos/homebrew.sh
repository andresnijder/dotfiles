#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Install homebrew packages
brew install screen wget zsh rsync make git gcc pwgen htop-osx python3 ruby
brew install ack android-sdk lua nvm rename trash unrar watchman nmap sqlite
brew install coreutils gnu-sed gnu-tar findutils gnutls --with-default-names
brew install vim --with-override-system-vi
