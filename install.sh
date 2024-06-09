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

# install antidote
echo "Installing antidote (zsh bundle manager)"
[[ -e ${DOT_ROOT:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote.git ${DOT_ROOT:-~}/.antidote

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
