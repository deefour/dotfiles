fpath=($fpath $HOME/dotfiles/.zsh/functions)
typeset -U fpath

export PATH=${HOME}/bin:${HOME}/.composer/vendor/bin:${HOME}/.cabal/bin:/usr/local/sbin:/usr/local/bin:/usr/local/php/bin:/usr/local/share/npm/bin:${PATH}
export NODE_PATH=/usr/local/lib/node_modules:${NODE_PATH}

export EDITOR=vim
export VISUAL=vim
export D4_EDITOR=mvim   # Only works for IDEs like Sublime Text 2, MacVim, etc... which have executable binary (subl, mvim), etc...

export ANSIBLE_NOCOWS=1

export MARKPATH=$HOME/.marks

source ~/.zshenv.local
