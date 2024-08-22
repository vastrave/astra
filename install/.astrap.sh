#!/bin/sh

set -e

   clear
echo "
                  ██                                      .::.
                  ██                                   .:'  .:
  ▄█▀██▄  ▄██▀████████▀███▄███ ▄█▀██▄        ,MMM8&&&.:'   .:'
 ██   ██  ██   ▀▀ ██    ██▀ ▀▀██   ██       MMMMM88&&&&  .:'
  ▄█████  ▀█████▄ ██    ██     ▄█████      MMMMM88&&&&&&:'
 ██   ██  █▄   ██ ██    ██    ██   ██      MMMMM88&&&&&&
 ▀████▀██▄██████▀ ▀████████▄  ▀████▀██▄  .:MMMMM88&&&&&&
                                      
 astra v0.1
 starting installation in 3s. ctrl-c to abort."
sleep 3

loc="/usr/local/bin"

m1brew="/opt/homebrew"
if [ ! -d "$m1brew" ]; then
    echo " Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


intbrew="/usr/local/bin/brew"
if [ ! -d "$intbrew" ]; then
    echo " Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

       if [ ! -e /usr/local/bin ]; then
      mkdir /usr/local/bin
else
      echo
      echo " --> accept"
fi

   ln -s $m1brew $loc

 printf ' -> installing astra  '
(while :; do for c in / - \\ \|; do printf '%s\b' "$c"; sleep 0.2; done; done) &
git clone --quiet https://github.com/satomiify/astra
{ printf '\n'; kill $! && wait $!; } 2>/dev/null

sleep 0.1

 echo
 printf ' -> managing files  '
(while :; do for c in / - \\ \|; do printf '%s\b' "$c"; sleep 0.2; done; done) &
sleep 1
mkdir ~/.config/astra && cp -f astra/scripts/conf.sh ~/.config/astra
touch ~/astra/temp.txt
cat > ~/astra/temp.txt <<EOF
hwid
EOF

echo "source ~/astra/.testcmd.sh" >> ~/.zshrc
chmod +x ~/astra/.testcmd.sh

cp -f ~/astra/assets/desktop/dockx/base/FeatureViewController.nib /Applications/DockX.app/Contents/Resources/Base.lproj/FeatureViewController.nib
cp -f ~/astra/assets/desktop/dockx/en/Localizable.strings /Applications/DockX.app/Contents/Resources/en.lproj/Localizable.strings
cp -f ~/astra/assets/desktop/dockx/en/FeatureViewController.strings /Applications/DockX.app/Contents/Resources/en.lproj/FeatureViewController.strings

{ printf '\n'; kill $! && wait $!; } 2>/dev/null

 printf ' -> installing additional packages  '
(while :; do for c in / - \\ \|; do printf '%s\b' "$c"; sleep 0.2; done; done) &
   brew update
   brew upgrade

brew install llvm imagemagick python3 dockx jwbargsten/misc/defbro
pip3 install keep
# HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
{ printf '\n'; kill $! && wait $!; } 2>/dev/null

echo             
echo " --> completed setup | astra"
    sudo rm -rf /tmp/astrap
    sudo rm -rf astra/install
    sudo rm -rf astra/scripts
sleep 0.8

echo
echo " --> reboot recommended. Reboot now?"
echo " enter | y     ctrl-c | n"
read
sudo reboot
