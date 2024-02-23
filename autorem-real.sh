#!/bin/sh

notify-send "******* Starting autoremove..."
apt autoremove -y | while IFS= read -r line; do notify-send "$line"; done
notify-send "******* Autoremove finished"
