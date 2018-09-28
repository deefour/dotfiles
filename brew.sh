#!/usr/bin/env bash

brew update

brew upgrade

# shell stuff
brew install zsh
brew install antigen
brew install autojump

# dev tools
brew install git
brew install htop
brew install composer
brew install tmux
brew install ssh-copy-id
brew install bat
brew install exa
brew install nvm
brew install jq
brew install gnu-sed --with-default-names
brew install findutils
brew install diff-so-fancy
brew install ansible

# http tools
brew install httpie
brew install wget
brew install telnet

# stores
brew install mariadb
brew install sqlite
brew install redis

# for vim
brew install ctags
brew install vim --with-override-system-vi

# languages
brew install go
brew install ruby
brew install php@7.1

# media
brew install youtube-dl

# conversion tools
brew install ffmpeg
brew install gd
brew install imagemagick
brew install pandoc

brew cleanup
