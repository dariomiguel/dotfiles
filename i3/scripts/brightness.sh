#!/bin/bash
# Obtiene el brillo actual usando brightnessctl
BRIGHTNESS=$(brightnessctl info | grep -oP '\(\d+%\)' | tr -d '()')
echo "☀ $BRIGHTNESS"
