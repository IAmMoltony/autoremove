#!/usr/bin/env bash

# Sleep for a few seconds so the screen doesn't get flooded with "Waiting for package lock ..." notifications
sleep 10

notify-send "******* Starting autoremove..."
apt autoremove -y | while IFS= read -r line; do notify-send "$line"; done
notify-send "******* Autoremove finished"
