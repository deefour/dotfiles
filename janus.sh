#!/usr/bin/env bash

janus_directory="${HOME}/.janus"

if [ -d "$janus_directory" ]; then
  echo "Install vim dependencies"
  pushd "$janus_directory"

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

  popd
fi
