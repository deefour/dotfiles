#!/usr/bin/env bash

echo "Installing latest version of nix and packages"

curl https://nixos.org/nix/install | sh

source "$HOME/.nix-profile/etc/profile.d/nix.sh"

install() {
  nix-env -iA "$1"
}

nix-channel --update
nix-env -u

install nixpkgs.pandoc
install nixpkgs.gitAndTools.diff-so-fancy
install nixpkgs.exa
install nixpkgs.bat
install nixpkgs.httpie
install nixpkgs.python27Packages.youtube-dl
install nixpkgs.jq
install nixpkgs.autojump
install nixpkgs.yarn

nix-collect-garbage -d
