fpath=($fpath $HOME/dotfiles/.zsh/functions)
typeset -U fpath

export PATH=${HOME}/bin:${HOME}/.composer/vendor/bin:${HOME}/.cabal/bin:/usr/local/sbin:/usr/local/bin:/usr/local/php55/bin:/usr/local/share/npm/bin:${PATH}
export NODE_PATH=/usr/local/lib/node_modules:${NODE_PATH}

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_AMITOOL_HOME="/usr/local/Library/LinkedKegs/ec2-ami-tools/jars"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

export EDITOR=vim
export VISUAL=vim
export D4_EDITOR=mvim   # Only works for IDEs like Sublime Text 2, MacVim, etc... which have executable binary (subl, mvim), etc...

export MARKPATH=$HOME/.marks

source ~/.zshenv.local
