autoload colors
if [[ "$terminfo[colors]" -gt 8 ]]; then
    colors
fi
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval $COLOR='$fg_no_bold[${(L)COLOR}]'
    eval BOLD_$COLOR='$fg_bold[${(L)COLOR}]'
done
eval RESET='$reset_color'


. ~/dotfiles/.zsh/aliases
. ~/dotfiles/.zsh/completion
. ~/dotfiles/.zsh/config

# use .localrc for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

eval "$(rbenv init -)"
