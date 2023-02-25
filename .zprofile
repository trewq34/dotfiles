export PATH=$HOME/.local/bin:$HOME/bin:$PATH
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv > /dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

setopt ignoreeof
