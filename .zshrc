source $DOT_ROOT/.zsh/config

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# use .localrc for settings specific to one system
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

# Configure NVM
export NVM_DIR="$HOME/.nvm"

if [ -d "$NVM_DIR" ]
then
  source "$NVM_DIR/nvm.sh"
  source "$NVM_DIR/bash_completion"
fi

# Configure nix-env when on linux
if [ -d "$HOME/.nix-profile" ]
then
  source "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi
