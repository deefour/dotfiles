# Deefour's Dotfiles

## Dependencies

I use [janus](https://github.com/carlhuda/janus),
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh),
[chruby](https://github.com/postmodern/chruby), and
[macvim](http://code.google.com/p/macvim/). The dotfiles are setup with
this in mind.
[direnv](https://github.com/zimbatm/direnv)

## Installation

 1. Install the applications mentioned in the **Prerequisites**.
 2. Run `cd ~ && git clone git://github.com/deefour/dotfiles.git && ~/dotfiles/install`
 3. Install the following vim plugins to `~/.janus`
    - [PHP QA](https://github.com/joonty/vim-phpqa)
    - [Tabular](https://github.com/godlygeek/tabular)
    - [UltiSnips](https://github.com/SirVer/ultisnips)
    - [EasyMotion](https://github.com/Lokaltog/vim-easymotion)
    - [speeddating.vim](https://github.com/tpope/vim-speeddating)


## Update

 1. Run `~/dotfiles/update`

## Local Changes

If you're using my Dotfiles repo directly for your dotfiles setup, you
can create `~/.zshrc.local` and `~/.zshenv.local` file to customize your setup.
This is a good place to put changes specific to the computer you're working on
or which are confidential *(things you don't want appearing in a public repo
should you decide to publish your own fork/version of this repo)*.
