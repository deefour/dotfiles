#!/usr/bin/env bash

# install homebrew
if ! type brew &>/dev/null; then
  if [[ $(uname -s) == Darwin ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  fi
fi

install() {
  brew list "$1" &>/dev/null || brew install "$@"
}

eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew upgrade

# shell tools
install bat
install dust
install fasd
install fd
install findutils
install fzf
install gnu-sed
install exa
install htop
install jq
install ssh-copy-id
install tig
install tmux
install tree
install zsh

# dev tools
install ansible
install composer
install docker
install docker-compose
install coreutils
install difftastic
install gcc
install git
install nvm
install restic
install vagrant
install yarn

# http tools
install httpie
install wget
install telnet

# stores
install mariadb
install sqlite
install redis

# for vim
install ctags
install vim

# languages
install go
install ruby
install php

# media
install youtube-dl

# conversion tools
install ffmpeg
install gd
install imagemagick
install pandoc

brew cleanup
