#!/usr/bin/bash

# ARGUMENTS, IN ORDER:
# 1. System (e.g., "arcade")
# 2. Emulator (e.g. "lr-fba-next")
# 3. Full path to game (e.g., /home/pi/RetroPie/roms/arcade/wjammers.zip)

if [[ -z "$3" ]]; then
  exit 0
fi

system=$1
emulator=$2

# Gets the basename of the game (e.g., "wjammers")
game=$(basename $3)
game=${game%.*}

game_filename="/home/pi/retropie-leds/games/$system-$game.json"
system_filename="/home/pi/retropie-leds/systems/$system.json"

if [[ -f "$game_filename" ]]; then
  sudo /home/pi/bin/umtool "$game_filename"
elif [[ -f "$system_filename" ]]; then
  sudo /home/pi/bin/umtool "$system_filename"
fi
