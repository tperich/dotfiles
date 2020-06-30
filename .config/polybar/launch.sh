#!/usr/bin/sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Run wal to set colors
if command -v wal > /dev/null; then
    wal -R
fi

# Launch bar1 and bar2
polybar -c $HOME/.config/polybar/config.ini main

