#!/usr/bin/env bash

echo "Installing ZSH"

sudo apt update

install () {
  sudo apt install "$1" -y
}

install git
install zsh
install curl
install tmux
install composer

sudo chown "$(whoami).$(whoami)" ~/.composer -R

source nix.sh
