# Start Hyprland if on TTY1
if [ "$(tty)" = "/dev/tty1" ]; then exec uwsm start hyprland.desktop; fi

