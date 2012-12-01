# Deefour's Dotfiles

## Dependencies

I use [janus](https://github.com/carlhuda/janus),
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh),
[rbenv](https://github.com/sstephenson/rbenv), and
[macvim](http://code.google.com/p/macvim/). The dotfiles are setup with
this in mind.

## Optional

I maintain a CLI bookmarking & shortcuts utility called **SpeedDial**.

 - **NPM Registry Package:** https://npmjs.org/package/speed-dial
 - **Github Repository:** https://github.com/deefour/speed-dial

This isn't a mandatory dependency for these dotfiles, but is recommended. Without SpeedDial

 1. The `se` function won't work if SpeedDial isn't installed

## Installation

 1. Install the applications mentioned in the **Prerequisites**.
 2. Run `cd ~ && git clone git://github.com/deefour/dotfiles.git && ~/dotfiles/install`

## Update 

 1. Run `~/dotfiles/update`

## Local Changes

If you're using my Dotfiles repo directly for your dotfiles setup, you
can currently create `~/.zshrc.local` and `~/.zshenv.local` file to
customize your setup. This is a good place to put changes specific to
the computer you're working on or which are confidential *(things you
don't want appearing in a public repo should you decide to publish your
own fork/version of this repo)*
