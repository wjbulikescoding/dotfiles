#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for changing blurs on the fly

notif="$HOME/.config/swaync/images/bell.png"

STATE=$(tail -1 .config/hypr/UserConfigs/Monitors.conf)

if [ "${STATE}" == "monitor=eDP-1,disabled" ]; then
	echo "monitor=eDP-1,preferred,0x0,1" >> $HOME/.config/hypr/UserConfigs/Monitors.conf 
else
	echo "monitor=eDP-1,disabled" >> $HOME/.config/hypr/UserConfigs/Monitors.conf
fi
