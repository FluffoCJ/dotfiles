#!/bin/zsh

# Path to your Waybar config file
CONFIG_FILE="$HOME/.config/waybar/config"

# Backup the original config file
cp "$CONFIG_FILE" "$CONFIG_FILE.bak"

# Define 12-hour and 24-hour formats
FORMAT_12H='format = "{:%I:%M:%S %p | %m/%d/%Y}"'
FORMAT_24H='format = "{:%H:%M:%S | %m/%d/%Y}"'

# Check the current format
CURRENT_FORMAT=$(grep 'format =' "$CONFIG_FILE")

echo "Current format: $CURRENT_FORMAT"

# Toggle the format
if [[ "$CURRENT_FORMAT" == *"$FORMAT_12H"* ]]; then
    # Switch to 24-hour format
    echo "Switching to 24-hour format..."
    sed -i "s|$FORMAT_12H|$FORMAT_24H|" "$CONFIG_FILE"
else
    # Switch to 12-hour format
    echo "Switching to 12-hour format..."
    sed -i "s|$FORMAT_24H|$FORMAT_12H|" "$CONFIG_FILE"
fi

# Restart Waybar to apply changes
pkill waybar && waybar &

echo "Waybar restarted."


