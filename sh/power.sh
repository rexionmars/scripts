#!/bin/bash

# ██████   ██████  ██   ██    ██ ██████   █████  ██████      ██████   █████  ████████ ████████ ███████ ██████  ██    ██ 
# ██   ██ ██    ██ ██    ██  ██  ██   ██ ██   ██ ██   ██     ██   ██ ██   ██    ██       ██    ██      ██   ██  ██  ██  
# ██████  ██    ██ ██     ████   ██████  ███████ ██████      ██████  ███████    ██       ██    █████   ██████    ████   
# ██      ██    ██ ██      ██    ██   ██ ██   ██ ██   ██     ██   ██ ██   ██    ██       ██    ██      ██   ██    ██    
# ██       ██████  ███████ ██    ██████  ██   ██ ██   ██     ██████  ██   ██    ██       ██    ███████ ██   ██    ██    

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
black='\033[0;30m'        # Black
red='\033[0;31m'          # Red
green='\033[0;32m'        # Green
yellow='\033[0;33m'       # Yellow
blue='\033[0;34m'         # Blue
purple='\033[0;35m'       # Purple
cyan='\033[0;36m'         # Cyan
white='\033[0;37m'        # White

# Real time battery charge
level_battery=$(cat /sys/class/power_supply/BAT0/capacity)
get_adapter_status=$(cat /sys/class/power_supply/ADP0/online)


# Simulate battery status
fake_reset=11


if [ "$get_adapter_status" == 0 ]; then

fi

# Check charge battey 100%
if [ "$level_battery" -eq 100 ]; then
    echo -e "%{F$Blue}$level_battery%$Color_Off"
fi

# Check charge battey in range 70 <= 100
if [ "$level_battery" -ge 60 ] && [ "$level_battery" -lt 100 ]; then
    echo -e "$Green$level_battery%$Color_Off"
fi

# Check charge battey in range 20 <= 60
if [ "$level_battery" -ge 20 ] && [ "$level_battery" -lt 60 ]; then
    echo -e "$Yellow$level_battery%$Color_Off"
fi

# Check charge battey in range 0 <= 20
if [ "$level_battery" -ge 0 ] && [ "$level_battery" -lt 20 ]; then
    echo -e "$Red$level_battery%$Color_Off"
fi
