[[ -f ~/.zsh/p10k.zsh ]] && source ~/.zsh/p10k.zsh
[[ -f ~/.zsh/plugins.zsh ]] && source ~/.zsh/plugins.zsh
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/brew.zsh ]] && source ~/.zsh/brew.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# Load Starship
eval "$(starship init zsh)"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/Dropbox/Mackup/.p10k.zsh.
[[ ! -f ~/Dropbox/Mackup/.p10k.zsh ]] || source ~/Dropbox/Mackup/.p10k.zsh

eval "$(starship init zsh)"
