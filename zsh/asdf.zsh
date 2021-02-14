if (( $+commands[brew] )); then
  file=$(brew --prefix asdf)/asdf.sh

  if [[ -f ${file} ]]; then
    # load asdf
    source $file

    # append completions to fpath
    fpath=(${ASDF_DIR}/completions $fpath)
    # initialise completions with ZSH's compinit
    autoload -Uz compinit
    compinit
  fi

  java=$HOME/.asdf/plugins/java/set-java-home.zsh
  [[ -f ${java} ]] && source ${java}
fi
