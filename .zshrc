[[ -f ~/.zsh/alias.zsh ]] && source ~/.zsh/alias.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/shell.zsh ]] && source ~/.zsh/shell.zsh
[[ -f ~/.zsh/key-bindings.zsh ]] && source ~/.zsh/key-bindings.zsh
[[ -f ~/.zsh/history.zsh ]] && source ~/.zsh/history.zsh
[[ -f ~/.zsh/goenv.zsh ]] && source ~/.zsh/goenv.zsh

eval "$(starship init zsh)"

eval "$(pyenv virtualenv-init -)"

eval "$(/opt/homebrew/bin/brew shellenv)"
