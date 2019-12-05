#!/usr/bin/env bash

echo "Installing latest version of nix and packages"

curl https://nixos.org/nix/install | sh

source "$HOME/.nix-profile/etc/profile.d/nix.sh"

install() {
  nix-env -iA "$1"
}

mkdir -p ~/.config/nixpkgs

# allow applications like chrome to be installedS
echo "{ allowUnfree = true; }" > ~/.config/nixpkgs/config.nix

nix-channel --update
nix-env -u

install nixpkgs.pandoc
install nixpkgs.exa
install nixpkgs.bat
install nixpkgs.httpie
install nixpkgs.jq
install nixpkgs.autojump
install nixpkgs.yarn
install nixpkgs.dust
install nixpkgs.bb
install nixpkgs.restic
install nixpkgs.tig
install nixpkgs.fd
install nixpkgs.insomnia
install nixpkgs.vscode
install nixpkgs.docker
install nixpkgs.mariadb
install nixpkgs.ansible
install nixpkgs.virtualbox
install nixpkgs.vagrant

nix-collect-garbage -d
