fpath=($fpath $HOME/dotfiles/.zsh/functions)
typeset -U fpath

export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH=${HOME}/bin:${PATH}

export EDITOR=vim
export VISUAL=vim
export D4_EDITOR=mvim   # Only works for IDEs like Sublime Text 2, MacVim, etc... which have executable binary (subl, mvim), etc...

source ~/.zshenv.local
