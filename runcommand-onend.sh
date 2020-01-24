#!/usr/bin/bash

# ARGUMENTS, IN ORDER:
# 1. System (e.g., "arcade")
# 2. Emulator (e.g. "lr-fba-next")
# 3. Full path to game (e.g., /home/pi/RetroPie/roms/arcade/wjammers.zip)

#echo 1 $1 >> /home/pi/log
#echo 2 $2 >> /home/pi/log
#echo 3 $3 >> /home/pi/log

if [[ -z "$3" ]]; then
  exit 0
fi

system=$1
emulator=$2

# Gets the basename of the game (e.g., "wjammers")
game=$(basename $3)
game=${game%.*}

sudo /home/pi/bin/umtool /home/pi/retropie-leds/tools/clear.json
