#!/usr/bin/env bash

install() {
  brew info "$1" | grep --quiet 'Not installed' && brew install "$1"
}

brew update

brew upgrade

# shell stuff
install zsh
install antigen
install autojump

# dev tools
install git
install htop
install composer
install tmux
install ssh-copy-id
install bat
install exa
install nvm
install jq
install gnu-sed --with-default-names
install findutils
install diff-so-fancy
install ansible
install tree
install coreutils

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
install vim --with-override-system-vi

# languages
install go
install ruby
install php@7.1

# media
install youtube-dl

# conversion tools
install ffmpeg
install gd
install imagemagick
install pandoc

brew cleanup
