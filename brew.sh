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
install coreutils
install diff-so-fancy
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
