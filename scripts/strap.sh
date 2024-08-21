#!/bin/bash

main() {
     set -e

 macsys="/System"
if [ ! -d "$macsys" ]; then
    echo "It seems you are on an unsupported device."
    echo "astra can only be installed on macOS or Linux systems."
    exit 1
fi


    root="/root"
if [ -d "$root" ]; then
    echo "astra has not yet been tested on Linux. Install? (enter ↵)"
    read
     
clear

echo "
                 ██                   
                 ██                   
 ▄█▀██▄  ▄██▀████████▀███▄███ ▄█▀██▄  
██   ██  ██   ▀▀ ██    ██▀ ▀▀██   ██  
 ▄█████  ▀█████▄ ██    ██     ▄█████  
██   ██  █▄   ██ ██    ██    ██   ██  
▀████▀██▄██████▀ ▀████████▄  ▀████▀██▄
                                      
astra v0.1
starting installation in 3s. ctrl-c to abort."
sleep 3

HOMEBREW_NO_AUTO_UPDATE=1 brew install clang-format@14
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm imagemagick
# HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
HOMEBREW_NO_AUTO_UPDATE=1 brew install koekeishiya/formulae/yabai
HOMEBREW_NO_AUTO_UPDATE=1 brew install dockx
HOMEBREW_NO_AUTO_UPDATE=1 brew install jwbargsten/misc/defbro
                            
git clone https://github.com/satomiify/astra

mkdir ~/.config/astra
cp -f ~/astra/scripts/conf.sh ~/.config/astra

touch ~/astra/temp.txt
cat > ~/astra/temp.txt <<EOF
hwid
EOF

echo "source ~/astra/.cmd.sh" >> ~/.zshrc
chmod +x ~/astra/.cmd.sh

cp -f ~/astra/assets/desktop/dockx/base/FeatureViewController.nib /Applications/DockX.app/Contents/Resources/Base.lproj/FeatureViewController.nib
cp -f ~/astra/assets/desktop/dockx/en/Localizable.strings /Applications/DockX.app/Contents/Resources/en.lproj/Localizable.strings
cp -f ~/astra/assets/desktop/dockx/en/FeatureViewController.strings /Applications/DockX.app/Contents/Resources/en.lproj/FeatureViewController.strings

echo             
echo "--> completed setup | astra"
sleep 0.8
reset
exit

}

main
