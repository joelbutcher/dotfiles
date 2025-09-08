# System PATH files
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/homebrew/opt/openssl@3/bin
export PATH=$PATH:$HOME/.config/phpmon/bin
export PATH=$PATH:$HOME/.npm-packages/bin

# Custom prompt with git-aware arrow
autoload -Uz vcs_info
precmd() { vcs_info }

# Configure vcs_info for git
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:git:*' actionformats '%b|%a'
zstyle ':vcs_info:*' enable git

# Function to get git status color
git_prompt_color() {
    if [[ -n ${vcs_info_msg_0_} ]]; then
        if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
            echo "%F{yellow}"  # Dirty/modified files
        elif [[ -n $(git log --oneline @{u}.. 2>/dev/null) ]]; then
            echo "%F{cyan}"    # Ahead of remote
        elif [[ -n $(git log --oneline ..@{u} 2>/dev/null) ]]; then
            echo "%F{magenta}" # Behind remote
        else
            echo "%F{green}"   # Clean and up to date
        fi
    else
        echo "%F{blue}"       # No git repo
    fi
}

# Set the prompt with git-aware colors and arrow
setopt PROMPT_SUBST
PROMPT='$(git_prompt_color)$(if [[ -n ${vcs_info_msg_0_} ]]; then echo "(${vcs_info_msg_0_}) "; fi)→%f '

# ZSH Config
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Rust
. "$HOME/.cargo/env"
