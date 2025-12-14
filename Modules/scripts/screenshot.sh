#!/bin/bash
set -e

region="$(slurp)" #> Slurp takes a while 
sleep 0.15
grim -g "$region" -t ppm - | satty --filename - --copy-command 'wl-copy' --early-exit --fullscreen --initial-tool brush

