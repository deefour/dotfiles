#!/usr/bin/env bash

echo "Installing node packages via yarn"

install() {
  yarn global add --ignore-optional "$1"
}

install yarn
install gulp
install prettyjson
install fkill-cli
