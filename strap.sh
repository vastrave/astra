#!/bin/bash

echo         
echo "-->""\e[1;32m[->]\e[0m" "astra | v0.1"
echo "--> Please note that astra may not work properly if you have SIP enabled."
echo "--> This script will install some needed dependencies. Is that okay?"
read
read
HOMEBREW_NO_AUTO_UPDATE=1 brew install clang-format@14
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm imagemagick
HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
HOMEBREW_NO_AUTO_UPDATE=1 brew install koekeishiya/formulae/yabai
HOMEBREW_NO_AUTO_UPDATE=1 brew install jwbargsten/misc/defbro

grep -Ei 'error|failed' | while read i; do
   echo "failed to set up astra: dependency installation error"
   exit
done

   echo      
   echo "--> build m1n1"
   git clone --recursive https://github.com/AsahiLinux/m1n1.git
   cd m1n1
   make
                            
git clone https://github.com/satomiify/astra
# sh ~/astra/conf.sh

touch ~/astra/temp.sh
cat > ~/astra/temp.sh <<EOF
hwid
EOF

   cd ~/m1n1
   grep -Ei 'such' | while read i; do
   echo "no m1n1 instance was detected. some features may not work properly."
done

 cd ~/m1n1
   grep -Ei 'such' | while read i; do
   echo "no m1n1 instance was detected. some features may not work properly."
done

echo             
echo "--> astra has finished setup."
echo "--> Some changes require a reboot. The system will reboot automatically in 10s (press Ctrl-Z to stop)"
sleep 10
   killall ControlStrip
   sudo nvram "recovery-boot-mode=unused"
   sudo reboot
