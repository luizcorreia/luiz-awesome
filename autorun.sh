#!/usr/bin/env bash

function run {
  if ! pgrep $1; then
    $@ &
  fi
}

#run dbus-launch update-checker
#run export $(dbus-launch)
#run light-locker
run picom --experimental-backend &
run /usr/libexec/polkit-gnome-authentication-agent-1 &
run gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg
run thunar --daemon
run urxvtd -q -o -f &
run setxkbmap -layout us -variant intl
run volumeicon &

#run xfce4-power-manager
run nm-applet
run xrdb merge ~/.Xresources
#run xfsettingsd
#run gnome-keyring-daemonT

nitrogen --restore
