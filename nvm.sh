#!/usr/bin/env bash

echo "Installing stable version of Node.js via NVM"

export NVM_DIR="$HOME/.nvm"

if [ -d "$NVM_DIR" ]
then
  source "$NVM_DIR/nvm.sh"
  source "$NVM_DIR/bash_completion"
fi

nvm_version="v10.15.0"

nvm install $nvm_version
nvm use $nvm_version
nvm alias default $nvm_version
