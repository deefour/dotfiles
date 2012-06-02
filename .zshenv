fpath=($fpath $HOME/dotfiles/.zsh/functions)
typeset -U fpath

export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH=${HOME}/bin:${PATH}

export EDITOR=vim
export VISUAL=vim

source ~/.zshenv.local
