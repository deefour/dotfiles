. $DOT_ROOT/.zsh/config
. $DOT_ROOT/.zsh/nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# use .localrc for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local
