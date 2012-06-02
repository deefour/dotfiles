. ~/dotfiles/.zsh/config
. ~/dotfiles/.zsh/aliases
. ~/dotfiles/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

eval "$(rbenv init -)"
