#!/bin/sh
#exec i3
#exec gnome-session
#exec env GNOME_SHELL_SESSION_MODE=classic gnome-session --session gnome-classic

# update x resources db
xrdb -merge ~/.Xresources 

# # add directory that contains terminus to the font path
xset +fp /usr/share/fonts/local
xset fp rehash

autocutsel -fork &
autocutsel -selection PRIMARY -fork &

