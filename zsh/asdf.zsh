if (( $+commands[brew] )); then
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

  # append completions to fpath
  fpath=(${ASDF_DIR}/completions $fpath)
  # initialise completions with ZSH's compinit
  autoload -Uz compinit
  compinit

  java=$HOME/.asdf/plugins/java/set-java-home.zsh
  [[ -f ${java} ]] && source ${java}
fi
