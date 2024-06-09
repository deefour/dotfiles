export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin
export PATH=$HOME/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=vendor/bin:$PATH

export EDITOR=vim
export VISUAL=vim

#export PURE_PROMPT_SYMBOL="→ "

export BAT_THEME="Monokai Extended Bright"
export NVM_DIR="$HOME/.nvm"

# use .zshenv.local for settings specific to one system
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
