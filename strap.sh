#!/bin/bash

echo         
echo "\e[1;32m[->]\e[0m" "astra | v0.1"
echo "Please note that astra may not work properly if you have SIP enabled."
echo "This script will install some needed dependencies. Is that okay?"
read
read
HOMEBREW_NO_AUTO_UPDATE=1 brew install clang-format@14
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm
HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
HOMEBREW_NO_AUTO_UPDATE=1 brew install koekeishiya/formulae/yabai
HOMEBREW_NO_AUTO_UPDATE=1 brew install jwbargsten/misc/defbro
                            # git clone --recursive https://github.com/AsahiLinux/m1n1.git
                            # make
                            
git clone https://github.com/satomiify/astra
# sh ~/astra/conf.sh

touch ~/astra/temp.sh
cat > ~/astra/temp.sh <<EOF
hwid
EOF

echo             
echo "astra has finished setup."
echo "Some changes require a reboot. The system will reboot automatically in 10s (press Ctrl-Z to stop)"
sleep 10
sudo reboot
