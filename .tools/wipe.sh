#!/bin/sh

set -e

echo " -> wipe astra and its components?"
echo "    enter | y     ctrl-c | n"
read

echo
 printf ' -> wiping astra  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &

if [ ! -e ~/astra ]; then
      echo
      echo " Exiting with error:"
      echo "  *Could not find the astra folder. Did you move it?"
      echo $i
else
      echo
fi

if [ ! -e ~/saturn ]; then
      echo
      echo " Exiting with error:"
      echo "  *Could not find the saturn folder. Did you move it?"
      exit 1
else
      echo 
fi

if [ ! -e ~/.config/astra ]; then
      echo
      echo " Exiting with error:"
      echo "  *Could not find the astra configuration folder. Did you move it?"
else
      echo 
fi

sudo rm -rf ~/astra
sudo rm -rf ~/saturn
sudo rm -rf ~/.config/astra

tmp="/tmp/astrap"
if [ ! -d "$tmp" ]; then
sudo rm -rf /tmp/astrap
fi

{ printf '\n'; kill $! && wait $!; } 2>/dev/null
echo " -> done."
