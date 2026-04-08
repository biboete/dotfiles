#!/bin/bash

#  Rice script
#  Author  :  jadetam (aquapaka)
#  Url     :  https://github.com/jadetam/dotfiles
#  About   :  This file will configure and launch the rice.
#

avaiableThemes=("aqua" "wasabi" "shuri" "jade" "tlinh")

usage() {
  printf "
Rice Script for change rice's current wallpaper

Usage:
`basename $0`\t[aqua]  \t A playful, mysterious girl with eyes like shimmering aqua, her movements graceful and quick, full of curiosity and charm
\t[wasabi] \t Mysterious and alluring, with eyes like deep ocean blue and an aura of fire, she exudes both danger and enchantment
\t[shuri] \t A gentle presence in shades of purple, like twilight’s soft embrace—quietly comforting, effortlessly lovely
\t[jade] \t Introspective and layered, a soul with raw edges, nostalgic warmth, and unspoken strength
\t[tlinh] \t Vibrant and dynamic, with rich colors and bold accents, she radiates energy and sophisticated elegance
"
}

# Set desktop wallpaper
set_desktop_wallpaper() {
  powershell ./wackground.ps1 ./rices/$theme/wallpapers --set-random
}

# Goes to this script location first
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

for theme in "${avaiableThemes[@]}"; do
  if [[ "$1" == "$theme" ]]; then
    echo "Changing wallpaper to $theme theme's wallpaper..."

    # # Apply configs
    set_desktop_wallpaper

    echo "Completed!"
    exit 0
  fi
done

usage
