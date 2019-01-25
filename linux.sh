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

source nix.sh
