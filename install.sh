#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Linking dot files to ~/"
symlinks=`find . -type f -maxdepth 1 -name '.*' | grep -v .DS_Store`

for file in $symlinks; do
  [ ! -h "${HOME}/$(basename $file)" ] && ln -s $file "${HOME}/$(basename $file)"
done

# silence login messages
touch ~/.hushlogin

echo "Installing homebrew dependencies"
source brew.sh


echo "Install vim dependencies"
cd "${HOME}/.janus"

git clone git@github.com:editorconfig/editorconfig-vim.git 2>/dev/null || true
git clone https://github.com/mattn/emmet-vim.git 2>/dev/null || true
git clone git://github.com/godlygeek/tabular.git 2>/dev/null || true
git clone git://github.com/ntpeters/vim-better-whitespace.git 2>/dev/null || true
git clone https://github.com/flazz/vim-colorschemes.git 2>/dev/null || true
git clone git@github.com:dkprice/vim-easygrep.git 2>/dev/null || true
git clone git@github.com:Lokaltog/vim-easymotion.git 2>/dev/null || true
git clone git://github.com/tpope/vim-fugitive.git 2>/dev/null || true
git clone git@github.com:tpope/vim-speeddating.git 2>/dev/null || true
git clone git://github.com/shawncplus/phpcomplete.vim.git 2>/dev/null || true

cd "$HOME"

echo "Installing node dependencies"
npm install -g yarn gulp prettyjson

echo "Done!"
