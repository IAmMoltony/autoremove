#!/usr/bin/env bash

# Sleep for a few seconds so the screen doesn't get flooded with "Waiting for package lock ..." notifications
sleep 10

notify-send "******* Starting autoremove..."

if command -v notify-send &> /dev/null
    apt autoremove -y | while IFS= read -r line; do notify-send "$line"; done
else
    apt autoremove
fi
notify-send "******* Autoremove finished"
