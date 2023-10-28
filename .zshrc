if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



export TERMINAL=kitty
export FILES=thunar
export SEARCH="./.bin/search.sh"
export EDITOR=nvim

export slstatus="$HOME/archlinux/dotfile/wm/dwm/slstatus/slstatus"
export BUN="$HOME/.bun/bin"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"


ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(
	git
	zsh-autosuggestions
	# End
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


## xbps
alias i='doas xbps-install -S'
alias u='doas xbps-install -S; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

alias ll="logo-ls -a -g"
alias l="logo-ls"
alias c="clear"
alias b="btop --utf-force"
alias rn="ranger"
alias v="vim"
alias n="nvim"
alias tm="tmux"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bun completions
[ -s "/home/aravan/.bun/_bun" ] && source "/home/aravan/.bun/_bun"

# bun
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

