fpath=($fpath $HOME/dotfiles/.zsh/functions)
typeset -U fpath

eval "$(rbenv init -)"

export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH=${HOME}/bin:${PATH}
export PATH=${HOME}/.rbenv/bin:${PATH}

source ~/.zshenv.local