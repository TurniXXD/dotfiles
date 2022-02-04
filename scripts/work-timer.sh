#!/bin/bash
notify-send 'Work!' 'Lets go change the world!' --icon=media-playback-start
for (( ; ; ))
do
    sleep 5400 #5400 secs work time
    notify-send 'Break!' 'You have been working for 90 minutes now, take a 20 minute brake before continuing' --icon=media-playback-pause
    sleep 1200 #1200 secs break time
    notify-send 'Work!' 'Your 20 minutes brake is over get back to work and change the world!' --icon=media-playback-start
done