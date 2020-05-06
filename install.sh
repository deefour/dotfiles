#!/usr/bin/env bash

export DOT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

grep -qF DOT_ROOT ~/.zshenv.local || echo "export DOT_ROOT=\"$DOT_ROOT\"" >> ~/.zshenv.local

pushd $DOT_ROOT

source .zshenv

echo "Linking dot files to ~/"
symlinks=`find "$(pwd)" -maxdepth 1 -type f -name '.*' | grep -v .DS_Store`

for file in $symlinks; do
  [ ! -h "${HOME}/$(basename $file)" ] && ln -s $file "${HOME}/$(basename $file)"
done

# silence login messages
touch ~/.hushlogin

_ANTIGEN_INSTALL_DIR="$DOT_ROOT"

# install antigen
echo "Installing antigen (zsh bundle manager)"
curl -L git.io/antigen > antigen.zsh

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

if [[ $(uname -s) == Darwin ]]
then
  echo "Installing mac-specific stuff"
  source mac.sh
  source brew.sh
else
  echo "Installing linux-specific stuff"
  source linux.sh
fi

source nvm.sh
source node.sh

popd
