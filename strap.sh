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
# HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
HOMEBREW_NO_AUTO_UPDATE=1 brew install koekeishiya/formulae/yabai
HOMEBREW_NO_AUTO_UPDATE=1 brew install jwbargsten/misc/defbro
                            
git clone https://github.com/satomiify/astra

touch ~/astra/temp.sh
cat > ~/astra/temp.sh <<EOF
hwid
EOF

echo "source ~/astra/.cmd.sh" >> ~/.zshrc
chmod +x ~/astra/.cmd.sh

echo             
echo "--> astra has finished setup."
echo
