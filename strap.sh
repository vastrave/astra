#!/bin/bash

echo "\e[1;32m[->]\e[0m" astra | v0.1
echo "Please note that astra may not work properly if you have SIP enabled."
echo "This script will install some needed dependencies. Is that okay?"
read
HOMEBREW_NO_AUTO_UPDATE=1 brew install clang
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm
                            # git clone --recursive https://github.com/AsahiLinux/m1n1.git
                            # make
mkdir ~/astra
touch ~/astra/astra.conf
touch ~/astra/astra.sh
cat > ~/astra/astra.conf <<EOF
# astra config file

# default config
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/astra/assets/desktop/background/desktop.png'"
defaults write com.apple.dock orientation right
defaults write com.apple.dock autohide-delay -float 0.5
defaults write com.apple.dock autohide-time-modifier -float 0.8
EOF
