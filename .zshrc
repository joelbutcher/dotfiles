source ~/.zsh/path.zsh
source ~/.zsh/plugins.zsh
source ~/.zsh/aliases.zsh

# Spin for
export PATH="/Users/joel.butcher/.spin/bin:$PATH"

# Load Composer Binaries
export PATH="$PATH:./vendor/bin:/Users/joel.butcher/.composer/vendor/bin"

# Load DBngin Binaries
export PATH="$PATH:/Users/Shared/DBngin/mysql/8.2/bin"
export PATH="$PATH:/Users/Shared/DBngin/postgresql/14.3/bin"
export PATH="$PATH:/Users/Shared/DBngin/postgresql/15.1/bin"
export PATH="$PATH:/Users/Shared/DBngin/redis/7.0.0/bin"

# Initialize Starship
eval "$(starship init zsh)"

# Set custom Starship config file
export STARSHIP_CONFIG=$HOME/.dotfiles/starship.toml

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/joel.butcher/Library/Application Support/Herd/config/php/84/"

# Herd injected PHP 8.5 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/joel.butcher/Library/Application Support/Herd/config/php/85/"


# Herd injected NVM configuration
export NVM_DIR="/Users/joel.butcher/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP binary.
export PATH="/Users/joel.butcher/Library/Application Support/Herd/bin/":$PATH

# GPG Signed Commits
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# Starship Prompt
eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"
