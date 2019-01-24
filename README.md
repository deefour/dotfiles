# Deefour's Dotfiles

My dotfiles for work (Mac) and home (Ubuntu Linux).

Includes handful of vim plugins, added zsh functionality via antigen, support for nvm, and a handful of npm and Homebrew (for mac only) packages I use. See [`install.sh`](#) and [`brew.sh`](#) for specifics.

> **Note:** You should probably fork this repository, read through the files, and make changes to suit your workflow before running `install.sh`.

## Dependencies

 - Node.js *(`npm` should be on the `$PATH`)*

## Installation

 1. Install [Homebrew](http://brew.sh/) (These dotfiles are mac-oriented)
 2. Run `cd ~ && git clone git://github.com/deefour/dotfiles.git && ~/dotfiles/install.sh`

> **Note:** You can put this repository outside your `$HOME` as long as it is symlink'd to your `$HOME` directory.

## Update

 1. Run `~/dotfiles/update.sh`

## Local Changes

Create a `~/.zshrc.local` and `~/.zshenv.local` file to customize your setup.
This is a good place to put changes specific to the computer you're working on
or which are confidential.