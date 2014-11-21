if [[ -d ~/Code/go ]]; then
  # Add the GOPATH
  export GOPATH=~/Code/go
fi

if (( $+commands[brew] )) ; then
  # Add the GOROOT, used by macvim
  export GOROOT=$(brew --prefix go)/libexec

  # Append the gopath bin to our own PATH
  export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
fi
