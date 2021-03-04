#!/bin/sh

# Exit on errors
set -e

# Remove any previous versions
rm -f undefined-medium.{otf,ttf}

# Download OTF & TTF fonts from undefined-medium
wget -q --show-progress https://github.com/andirueckel/undefined-medium/raw/master/fonts/otf/undefined-medium.otf
wget -q --show-progress https://github.com/andirueckel/undefined-medium/raw/master/fonts/ttf/undefined-medium.ttf

# Update fontconfig cache & Echo details about locally installed fonts
fc-cache
fc-list | grep $USER
