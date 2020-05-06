#!/usr/bin/env bash

# install homebrew
if ! type brew &>/dev/null; then
  if [[ $(uname -s) == Darwin ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  fi
fi

install() {
  brew info "$1" | grep --quiet 'Not installed' && brew install "$@"
}

brew update
brew upgrade

# shell stuff
install autojump

# dev tools
install git
install gcc
install zsh
install yarn
install htop
install composer
install tmux
install ssh-copy-id
install bat
install exa
install nvm
install jq
install gnu-sed
install findutils
install diff-so-fancy
install ansible
install tree
install coreutils
install vagrant

install dust
install restic
install tig
install fd

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
