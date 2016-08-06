#!/bin/bash
USER=$1
PID=$(pgrep -u $USER gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
GSETTINGS_BACKEND=dconf

PICTURE_DIR="/home/$USER/$2"

NEW_BACKGROUND=$(shuf -n1 -e "$PICTURE_DIR"*.jpg)

gsettings set org.gnome.desktop.background picture-uri "file://$NEW_BACKGROUND"

NEW_BACKGROUND=$(shuf -n1 -e "$PICTURE_DIR"*.jpg)

gsettings set org.gnome.desktop.screensaver picture-uri "file://$NEW_BACKGROUND"
