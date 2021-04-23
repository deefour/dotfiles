fpath=($fpath /home/linuxbrew/.linuxbrew/share/zsh/site-functions)
fpath=($fpath $DOT_ROOT/.zsh/functions)

typeset -U fpath

setopt interactivecomments

source $DOT_ROOT/.zsh/config

[[ -f ~/$NVM_DIR ]] && source "$NVM_DIR/nvm.sh"
[[ -f ~/$NVM_DIR ]] && source "$NVM_DIR/bash_completion"

# use .zshrc.local for settings specific to one system
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local


# Fzf
[[ -f ~/.fzf.zsh ]] || $(brew --prefix)/opt/fzf/install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
