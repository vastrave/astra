#!/bin/bash

echo "\e[1;32m[->]\e[0m" "astra | v0.1"
echo "Please note that astra may not work properly if you have SIP enabled."
echo "This script will install some needed dependencies. Is that okay?"
read
HOMEBREW_NO_AUTO_UPDATE=1 brew install clang
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm
HOMEBREW_NO_AUTO_UPDATE=1 brew install koekeishiya/formulae/yabai
                            # git clone --recursive https://github.com/AsahiLinux/m1n1.git
                            # make
git clone https://github.com/satomiify/astra
# sh ~/astra/conf.sh
echo             
echo "astra has finished setup."
echo "Some changes require a reboot. The system will reboot automatically in 10s (press Ctrl-Z to stop)"
sleep 10
reboot
