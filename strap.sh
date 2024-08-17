#!/bin/bash

echo         
echo "-->" "\e[1;32m[->]\e[0m" "astra | v0.1"
echo "--> Please note that astra may not work properly if you have SIP enabled."
echo "--> Several needed dependencies will be installed. Is that okay?"
read
read
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
