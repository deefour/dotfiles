. $DOT_ROOT/.zsh/config


# use .localrc for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
