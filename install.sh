#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Linking dot files to ~/"
symlinks=`find "$(pwd)" -maxdepth 1 -type f -name '.*' | grep -v .DS_Store`

for file in $symlinks; do
  [ ! -h "${HOME}/$(basename $file)" ] && ln -s $file "${HOME}/$(basename $file)"
done

# silence login messages
touch ~/.hushlogin

# install antigen
echo "Installing antigen (zsh bundle manage)"
curl -L git.io/antigen > antigen.zsh

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

if [[ $(uname -s) == Darwin ]]
then
  echo "Installing mac-specific stuff"
  source brew.sh
  source mac.sh
else
  echo "Installing linux-specific stuff"
  source linux.sh
fi

janus_directory="${HOME}/.janus"

if [ -d "$janus_directory" ]; then
  echo "Install vim dependencies"
  cd "$janus_directory"

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
fi

echo "Installing stable version of Node.js via NVM"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm_version="v10.15.0"

nvm install $nvm_version
nvm use $nvm_version
nvm alias default $nvm_version

echo "Installing node dependencies"
npm install -g --no-optional yarn gulp prettyjson

echo "Done!"
