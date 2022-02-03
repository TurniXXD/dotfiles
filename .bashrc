#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ssh='TERM=xterm-256color ssh'

# Initialize github repo, create folder in WORK location and clone the created repository into it
alias repo='~/scripts/py-repo-init/init.py'

# Pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

# Clean orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# Clean AUR orphans
alias cleanyay='yay -Yc'

# Clean cache
alias cache='rm -rf ~/.cache/*'

# Volume control
alias sound='alsamixer'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Kill X session
alias endx="sudo pkill X"

#Colorful man pages
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

PS1='[\u@\h \W]\$ '

neofetch
