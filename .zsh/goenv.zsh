export GOENV_SHELL=zsh
export GOENV_ROOT=$HOME/.goenv
if [ "${PATH#*$GOENV_ROOT/shims}" = "${PATH}" ]; then
  export PATH="$PATH:$GOENV_ROOT/shims"
fi
source "$(brew --prefix goenv)/completions/goenv.zsh"
command goenv rehash 2>/dev/null
goenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(goenv "sh-$command" "$@")";;
  *)
    command goenv "$command" "$@"
    eval "$(command goenv sh-rehash --only-manage-paths)"
    ;;
  esac
}
goenv rehash --only-manage-paths