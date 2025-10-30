#!/bin/sh

if [ "$DESKTOP_SESSION" = "ubuntu" ]; then 
   sleep 10s
   killall conky
   cd "$HOME/.conky/Gotham"
   conky -c "$HOME/.conky/Gotham/Gotham" &
   cd "$HOME/.conky/TeejeeTech"
   conky -c "$HOME/.conky/TeejeeTech/Network Panel" &
   cd "$HOME/.conky/TeejeeTech"
   conky -c "$HOME/.conky/TeejeeTech/Process Panel" &
   exit 0
fi
