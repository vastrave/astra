#!/bin/bash

main() {
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
type astrap to continue, x to cancel"

read -n 1 -s user_input

if [ "$user_input" == "x" ]; then
        echo "--> abort"
        exit 0
    else if [ "$user_input" == "astrap" ]; then
        echo "--> hold on.."
    fi                              

HOMEBREW_NO_AUTO_UPDATE=1 brew install clang-format@14
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm imagemagick
# HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
HOMEBREW_NO_AUTO_UPDATE=1 brew install koekeishiya/formulae/yabai
HOMEBREW_NO_AUTO_UPDATE=1 brew install dockx
HOMEBREW_NO_AUTO_UPDATE=1 brew install jwbargsten/misc/defbro
                            
git clone https://github.com/satomiify/astra

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
sleep 0.2
reset

}
main
