#!/bin/zsh


WALLPAPER_DIR="$HOME/Pictures/WallpapersCatppuccin"


if [ ! -d "$WALLPAPER_DIR" ]; then
  echo "Directory $WALLPAPER_DIR does not exist!"
  exit 1
fi


WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)

# Set the wallpaper using swww
if [ -n "$WALLPAPER" ]; then
  swww img "$WALLPAPER" --transition-type simple
  #wal -i "$WALLPAPER"
  #pywalfox update
  killall swaync
  swaync &

  echo "Wallpaper set to $WALLPAPER"
else
  echo "No wallpapers found in $WALLPAPER_DIR!"
  exit 1
fi

