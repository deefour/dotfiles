# Deefour's Dotfiles

My dotfiles for work (Mac) and home (Ubuntu Linux).

Includes handful of vim plugins, added zsh functionality via antidote, support for nvm, and a handful of npm and Homebrew packages I use. See [`install.sh`](https://github.com/deefour/dotfiles/blob/master/install.sh) and [`brew.sh`](https://github.com/deefour/dotfiles/blob/master/brew.sh) for specifics.

## Dependencies

 - Either Mac OS or Ubuntu
 - Git
 - cURL
 - Access to the `root` user

## Installation

 1. Run `cd ~ && git clone git://github.com/deefour/dotfiles.git && ~/dotfiles/install.sh`
 2. Close your terminal
 3. Configure your user account to use ZSH instead of Bash by default

> **Note:** You can put this repository outside your `$HOME` as long as it is symlink'd to your `$HOME` directory.

## Update

 1. Run `~/dotfiles/update.sh`
 2. Close the terminal session

## Local Changes

Create/update the content of the `~/.zshenv.local` and `~/.zshrc.local` files. These are sourced by the `.zshenv` and `.zshrc` files respectively.
