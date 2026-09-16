#!/usr/bin/env bash
set -e
mkdir -p ~/Pictures
path=$(realpath ~/Pictures/screenshot-$(date '+%Y-%m-%d_%H-%M-%S').png)
grim -g "$(slurp)" $path
wl-copy < $path
