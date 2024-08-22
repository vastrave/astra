#!/bin/sh

echo " -> wipe astra and its components?"
echo "    enter | y     ctrl-c | n"
read

echo
 printf ' -> wiping astra  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &

sudo rm -rf ~/astra
sudo rm -rf ~/saturn
sudo rm -rf ~/.config/astra

tmp="/tmp/astrap"
if [ ! -d "$tmp" ]; then
sudo rm -rf /tmp/astrap
fi

{ printf '\n'; kill $! && wait $!; } 2>/dev/null
echo " -> done."
