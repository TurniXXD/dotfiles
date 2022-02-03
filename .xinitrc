#!/bin/sh

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# automount
udiskie -a &

# keyboard layout
setxkbmap cz &

# compositor
compton -b &

# second monitor on right
# WORK
#xrandr --auto --output HDMI-1-1 --mode 2560x1080 --right-of eDP-1
# HOME
xrandr --auto --output HDMI-1-0 --mode 1440x900 --right-of eDP-1

# background
feh --bg-scale $HOME/bg-main.png

exec dwm
