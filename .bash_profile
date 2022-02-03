#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export GPG_TTY=$(tty)

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi