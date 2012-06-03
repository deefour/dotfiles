. ~/dotfiles/.zsh/aliases
. ~/dotfiles/.zsh/completion
. ~/dotfiles/.zsh/config

# use .localrc for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

eval "$(rbenv init -)"
