#!/usr/bin/env bash

cd $(dirname $0)
echo "Running apt autoremove..."
./autorem-real.sh &
