#!/bin/sh

# Exit on errors
set -e

# Loop over selected patched fonts
for font in Arimo Hack Iosevka Meslo Terminus Tinos
do
    # Download latest release from Nerd Fonts
    wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${font}.zip
    # Extract zip file & Install fonts locally
    unzip -qo ${font}.zip
    # Remove zip file
    rm ${font}.zip
done

# Delete unwanted Windows variants
rm -f *Windows*.ttf

# Update fontconfig cache & Echo details about locally installed fonts
fc-cache
fc-list | grep $USER
