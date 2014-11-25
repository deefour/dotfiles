# Deefour's Dotfiles

If you are using a Mac, most dependencies below can be installed through [Homebrew](http://brew.sh/).

## Dependencies

 - [janus](https://github.com/carlhuda/janus)
 - [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
 - [chruby](https://github.com/postmodern/chruby)
 - [php-version](git@github.com:wilmoore/php-version.git)
 - [macvim](http://code.google.com/p/macvim/)
 - [direnv](https://github.com/zimbatm/direnv)
 - [ctags](http://ctags.sourceforge.net/)

For vim, the following plugins should be installed by cloning each git repository into `~/.janus`

 - [PHP QA](https://github.com/joonty/vim-phpqa)
 - [Tabular](https://github.com/godlygeek/tabular)
 - [UltiSnips](https://github.com/SirVer/ultisnips)
 - [EasyMotion](https://github.com/Lokaltog/vim-easymotion)
 - [speeddating.vim](https://github.com/tpope/vim-speeddating)
 - [WindowSwap.vim](https://github.com/wesQ3/vim-windowswap)

## Installation

 1. Install all dependencies listed above.
 2. Run `cd ~ && git clone git://github.com/deefour/dotfiles.git && ~/dotfiles/install`

## Update

 1. Run `~/dotfiles/update`

## Local Changes

If you're using my Dotfiles repo directly for your dotfiles setup, you
can create `~/.zshrc.local` and `~/.zshenv.local` file to customize your setup.
This is a good place to put changes specific to the computer you're working on
or which are confidential *(things you don't want appearing in a public repo
should you decide to publish your own fork/version of this repo)*.

## App Icon

I use the "MacVim Replacement Icon" found on
[Dribbble](https://dribbble.com/shots/337065-MacVim-Icon-Updated).
