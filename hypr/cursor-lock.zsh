#!/bin/zsh

MONITOR="DP-2"  # Replace with the actual monitor name

# Get the current monitor position
CURRENT_POS=$(hyprctl monitors | grep "$MONITOR" -A 5 | grep "at" | awk '{print $3}')

# Toggle the monitor position
if [ "$CURRENT_POS" = "0x0" ]; then
    # Move monitor 5 pixels to the left
    hyprctl keyword monitor "$MONITOR, 2560x1440@170Hz, -500x0, 1"
    notify-send "Mouse lock enabled"
else
    # Reset monitor to 0x0
    hyprctl keyword monitor "$MONITOR, 2560x1440@170Hz, 0x0, 1"
    notify-send "Mouse lock disabled"
fi

