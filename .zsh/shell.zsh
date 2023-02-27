autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

(( $+commands[dircolors] )) && eval "$(dircolors -b)"
zstyle ':completions:*' list-colors ${(s.:.)LS_COLORS}

autoload -U select-word-style
select-word-style bash
