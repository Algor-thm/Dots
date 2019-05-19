#! /bin/bash
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
systemctl --user import-environment DISPLAY
xrdb -merge ~/.Xresources
setxkbmap -option caps:escape
exec dwm
