#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR

source config.sh

echo "Linking dot files to ~/"
symlinks=`find "$(pwd)" -maxdepth 1 -type f -name '.*' | grep -v .DS_Store`

for file in $symlinks; do
  [ ! -h "${HOME}/$(basename $file)" ] && ln -s $file "${HOME}/$(basename $file)"
done

# silence login messages
touch ~/.hushlogin

# install antigen
echo "Installing antigen (zsh bundle manager)"
curl -L git.io/antigen > antigen.zsh

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

if [[ $(uname -s) == Darwin ]]
then
  echo "Installing mac-specific stuff"
  source mac.sh
  source brew.sh
else
  echo "Installing linux-specific stuff"
  source linux.sh
fi

source janus.sh
source nvm.sh
source node.sh

popd
