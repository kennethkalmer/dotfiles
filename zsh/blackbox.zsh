# Get StackExchange blackbox loaded up

PLUGIN_BIN="$HOME/Code/FOSS/blackbox/bin"

if [[ -d $PLUGIN_BIN ]]; then
  export PATH="${PATH}:${PLUGIN_BIN}"
fi
