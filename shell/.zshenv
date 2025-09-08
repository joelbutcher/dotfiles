# System PATH files
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/homebrew/opt/openssl@3/bin
export PATH=$PATH:$HOME/.config/phpmon/bin
export PATH=$PATH:$HOME/.npm-packages/bin

PROMPT='%F{cyan}→%f '

# ZSH Config
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Rust
. "$HOME/.cargo/env"
