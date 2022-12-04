# Alias
# ---


# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cat="bat -p"
alias php='valet php'
alias art='php artisan'
alias composer='[ -f valet ] && valet composer || composer'
alias which-php='[ -f valet ] && valet which-php || which php'
alias fresh='php artisan migrate:fresh --seed'
alias migrate='php artisan migrate'
alias tink='php artisan tinker'
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias adzooma='bash ./adzooma'
alias tags='git describe --tag --abbrev=0'
alias composer1='sudo php /usr/local/bin/composer self-update --1 && sudo php /usr/local/bin/composer global update'
alias composer2='sudo php /usr/local/bin/composer self-update --2 && sudo php /usr/local/bin/composer global update'
alias pint='./vendor/bin/pint'
alias pest='./vendor/bin/pest'
alias phpunit='./vendor/bin/phpunit'
alias phpstan='./vendor/bin/phpstan'
alias vite='./node_modules/.bin/vite'
alias tw='./node_modules/.bin/tailwind'
