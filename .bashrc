#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

Black_bg='\e[0;40m'
Blue='\e[0;34m'
Brown='\e[0;33m'
Green='\e[0;32m'
Red='\e[0;31m'
White='\e[0;37m'
Reset='\e[0m'

export PS1="\[$White\][\[$Brown\]\u@\H\[$White\]:\[$Blue\]\w\[$White\]] \[$Brown\]\\\$ \[$Reset\]"
export MC_SKIN=${HOME}/.config/mc/solarized.ini
export HISTTIMEFORMAT="[%d/%m/%y %T] "
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=5000
export VISUAL="vim"
export EDITOR="vim"

alias grep='LC_ALL=C grep --color'
alias ls='ls -F --color=auto'
alias ssh='TERM=xterm ssh'

man() {
	env \
		LESS_TERMCAP_mb=$(printf $Red) \
		LESS_TERMCAP_md=$(printf $Red) \
		LESS_TERMCAP_me=$(printf $Reset) \
		LESS_TERMCAP_se=$(printf $Reset)\
		LESS_TERMCAP_so=$(printf $Black_bg) \
		LESS_TERMCAP_ue=$(printf $Reset) \
		LESS_TERMCAP_us=$(printf $Blue) \
		man "$@"
}

eval `dircolors -b /usr/share/LS_COLORS/LS_COLORS`
xrdb -merge ~/.Xresources
