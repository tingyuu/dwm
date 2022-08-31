#!/bin/sh

fcitx5 -d


while true; do
#	xsetroot -name "$(~/dwm.script/dwmMemory) | $(date +"%F %R ")"
        ./dwm-status.sh
   sleep 2    # Update time every minute
done &

./wallpaper.sh &

