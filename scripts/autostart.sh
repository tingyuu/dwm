#!/bin/sh

fcitx5 -d

while true; do
   ./dwm-status.sh
   sleep 5    # Update time every minute
done &

./wallpaper.sh &

picom &
xfce4-power-manager &
