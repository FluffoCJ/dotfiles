#!/bin/zsh

sleep 2

#vesktop &    
#steam &

sleep 5
hyprctl dispatch movetoworkspacesilent 5,vesktop

sleep 10
hyprctl dispatch movetoworkspacesilent 2,steam
