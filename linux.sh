#!/usr/bin/env bash

sudo apt update

sudo apt -y install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php

sudo apt-get update

install () {
  sudo apt install "$1" -y
}

install build-essential
install git
install ddnsmasq
install dfs
install gdebi

# install php
phppkgs=(bcmath gd mbstring pdo curl xml json mysql)

PHP_VERSION=7.4

install "php${PHP_VERSION}"

for pkg in ${phppkgs[@]}; do
  install "php${PHP_VERSION}-${pkg}"
done

# turn off apache
sudo systemctl disable --now apache2

mkdir ~/.composer
sudo chown "$(whoami).$(whoami)" ~/.composer -R

source brew.sh

sudo apt autoremove -y
