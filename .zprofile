
# Get the aliases and functions
[ -f $HOME/.zshrc ] && . $HOME/.zshrc

[[ ! $DISPLAY && $(tty) = "/dev/tty1" ]] && startx

. "$HOME/.cargo/env"
