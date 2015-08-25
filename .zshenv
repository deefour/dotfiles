export DOT_ROOT=$HOME/dotfiles

fpath=($fpath $DOT_ROOT/.zsh/functions)
typeset -U fpath

export PATH=./bin:./vendor/bin:${HOME}/bin:${HOME}/.composer/vendor/bin:$(brew --prefix homebrew/php/php56)/bin:/usr/local/sbin:/usr/local/bin:${PATH}
export NODE_PATH=/usr/local/lib/node_modules:${NODE_PATH}

export EDITOR=vim
export VISUAL=vim
export D4_EDITOR=mvim  # Only works for IDEs like Sublime Text 2, MacVim, etc... which have executable binary (subl, mvim), etc...

export ANSIBLE_NOCOWS=1

export MARKPATH=$HOME/.marks

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# interactive comments
set -k

# apply local/private settings
source ~/.zshenv.local
