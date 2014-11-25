autoload colors
if [[ "$terminfo[colors]" -gt 8 ]]; then
    colors
fi
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval $COLOR='$fg_no_bold[${(L)COLOR}]'
    eval BOLD_$COLOR='$fg_bold[${(L)COLOR}]'
done
eval RESET='$reset_color'

. $DOT_ROOT/.zsh/config


# use .localrc for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

[[ -s /Users/deefour/.nvm/nvm.sh ]] && . /Users/deefour/.nvm/nvm.sh # This loads NVM

# phpbrew
export PHPBREW_SET_PROMPT=0
source $HOME/.phpbrew/bashrc
