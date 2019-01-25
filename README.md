# Deefour's Dotfiles

My dotfiles for work (Mac) and home (Ubuntu Linux).

Includes handful of vim plugins, added zsh functionality via antigen, support for nvm, and a handful of npm and Homebrew (for mac only) packages I use. See [`install.sh`](https://github.com/deefour/dotfiles/blob/master/install.sh) and [`brew.sh`](https://github.com/deefour/dotfiles/blob/master/brew.sh) for specifics.

> **Note:** Do not clone this repository and use it for your own dotfiles. If you like what's here, **fork this project**, read through the files, and make changes to suit your workflow before running `install.sh`. Consider installing your fork to a virtual machine before applying it to your physical machine.

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

Create a `~/.zshrc.local` and `~/.zshenv.local` file to customize your setup.
This is a good place to put changes specific to the computer you're working on
or which are confidential.