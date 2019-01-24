export DOT_ROOT="$HOME/dotfiles"

fpath=($fpath $DOT_ROOT/.zsh/functions)
typeset -U fpath

export PATH=./bin:./vendor/bin:${HOME}/bin:${HOME}/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin
export NODE_PATH=/usr/local/lib/node_modules:${NODE_PATH}

export EDITOR=vim
export VISUAL=vim

export ANSIBLE_NOCOWS=1

export MARKPATH=$HOME/.marks

export BAT_THEME="Monokai Extended Bright"

setopt interactivecomments

# apply local/private settings
[[ -f ~/.zshenv.local ]] && . ~/.zshenv.local

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
