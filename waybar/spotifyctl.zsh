
status=$(playerctl -p spotify status)
title=$(playerctl -p spotify metadata xesam:title)

if [[ -z $status ]] 
then
   # spotify is dead, we should die to.
   exit
fi

if [[ $status == "Playing" ]]
then
   echo "{\"class\": \"playing\", \"text\": \"  $title\"}"
   pkill -RTMIN+30 waybar
   exit
fi

if [[ $status == "Paused" ]]
then
   echo "{\"class\": \"paused\", \"text\": \"  $title\"}"
   pkill -RTMIN+30 waybar
   exit
fi
