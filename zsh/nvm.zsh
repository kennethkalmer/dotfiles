# Only if nvm is here
if [[ -d ~/.nvm ]] ; then
  export NVM_DIR=~/.nvm

  # Yank nvm out of homebrew
  if (( $+commands[brew] )); then
    source $(brew --prefix nvm)/nvm.sh
  fi
fi
