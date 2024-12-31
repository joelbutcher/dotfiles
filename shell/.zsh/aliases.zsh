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
alias mf='art migrate:fresh'
alias mfs='art migrate:fresh --seed'

# Testbench
alias tb='php ./vendor/bin/testbench'
alias testbench='tb'

# Composer
alias c='composer'
alias cu='composer update'
alias cr='composer require'
alias ci='composer install'
alias ct='composer test'

# Pint
alias pint="$HOME/.composer/vendor/bin/pint"

# Pest
alias pest='./vendor/bin/pest'
alias pestp='pest --parallel'

# PHPUnit
alias punit='phpunit'
alias phpunit='./vendor/bin/phpunit'

# PHP Stan
alias pstan='phpstan'
alias phpstan='./vendor/bin/phpstan'

# Infection
alias infection='./vendor/bin/infection'

# Vite
alias vite='./node_modules/.bin/vite'

# Tailwind
alias tw='./node_modules/.bin/tailwind'

# Valet
 alias php='herd php'
 alias composer='herd composer'
 alias which-php='herd which-php'

# Sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# Git
alias gc="git checkout"
alias gpo="git push origin"
alias gm="git merge"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# gh cli
alias 'gnpr'='gh pr create --base main --head "$(git branch --show-current)"'

# PhpStorm
alias pstorm='open -a $HOME/Applications/PhpStorm.app "`pwd`"'
