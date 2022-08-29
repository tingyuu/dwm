#!/bin/sh

while true; do
   xsetroot -name "$(date +"%F %R")"
   sleep 1m    # Update time every minute
done &
xrandr -s 1440x900 &
feh --bg-scale ~/Downloads/1.png &
fcitx5 -d &
