# Alias
# ---

# Generic / Config
alias cat="bat -p"
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias sshconfig='vim ~/.ssh/config'
alias copykey='command cat ~/.ssh/id_rsa.public | pbcopy'

# PHP
alias switch-php='brew unlink php@7.4 && brew link --overwrite --force php'
alias switch-php74='brew unlink php && brew link --overwrite --force php@7.4'

# Artisan
alias art='php artisan'
alias tink='art tinker'
alias fresh='art migrate:fresh --seed'

# Composer
alias c='composer'
alias cu='composer update'
alias cr='composer require'
alias ci='composer install'
alias ct='composer test'

# Pint
alias pint='./vendor/bin/pint'

# Pest
alias pest='./vendor/bin/pest'
alias pestp='pest --parallel'

# PHPUnit
alias punit='phpunit'
alias phpunit='./vendor/bin/phpunit'

# PHP Stan
alias pstan='phpstan'
alias phpstan='./vendor/bin/phpstan'

# Vite
alias vite='./node_modules/.bin/vite'

# Tailwind
alias tw='./node_modules/.bin/tailwind'

# Valet
alias php='[ -f valet ] && valet php || php'
alias composer='[ -f valet ] && valet composer || composer'
alias which-php='[ -f valet ] && valet which-php || which php'

# Sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# Git
alias gc="git checkout"
alias gpo="git push origin"
alias gm="git merge"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# PhpStorm
alias pstorm='open -a $HOME/Applications/JetBrains\ Toolbox/PhpStorm.app "`pwd`"'