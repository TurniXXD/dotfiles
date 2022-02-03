#!/bin/bash
wifi="$(nmcli r wifi | awk 'FNR = 2 {print $1}')"
if [ "$wifi" == "enabled" ]; then
	rfkill block all &
	notify-send 'Mode avion: actif'
else
	rfkill unblock all &
	notify-send 'Mode avion: inactif'
fi
