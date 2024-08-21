#!/bin/sh

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

HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm imagemagick python3 dockx jwbargsten/misc/defbro
# HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
                            
git clone https://github.com/satomiify/astra

mkdir ~/.config/astra && cp -f ~/astra/scripts/conf.sh ~/.config/astra

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
