# Add the GOPATH
export GOPATH=/Users/kenneth/Code/go

# Add the GOROOT, used by macvim
export GOROOT=$(brew --prefix go)/libexec

# Append the gopath bin to our own PATH
export PATH=$PATH:$GOPATH/bin
