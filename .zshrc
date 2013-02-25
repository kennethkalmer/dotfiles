# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="robbyrussell"
export ZSH_THEME="kenneth"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew rbenv git bundler knife osx heroku)

source $ZSH/oh-my-zsh.sh

# Custom path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$HOME/bin:$(npm bin):$(npm bin -g):$PATH

# Disable autocorrect on per-command basis
#alias knife='nocorrect knife'
#alias mvim='nocorrect mvim'
#alias rspec='nocorrect rspec'
alias fuu='rspec --format Fuubar'

# Mysql gem to work (http://lightyearsoftware.com/2011/02/mysql-5-5-on-mac-os-x/)
#export DYLD_LIBRARY_PATH="$(brew --prefix mysql)/lib:$DYLD_LIBRARY_PATH"

alias c='connect'

# UTF-8 in the shell
export LC_CTYPE=en_US.UTF-8

# What else?
export EDITOR=vim
