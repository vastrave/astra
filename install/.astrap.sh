#!/bin/sh

# set -e
cd

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

   /bin/bash read -r -p " --> What is your name?: " usrn
   echo "     hello, $usrn. Welcome to astrap."
   echo "     First of all, which theming do you prefer for astra?"

echo ""
   $usrm=/bin/bash read -r -p "  1. Modern" th1
   read
     if $th1; then
     echo "yay"
     fi

printf ' -> partitioning  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &

if [ ! -e /System/Volumes/Preboot ]; then
   echo " *No Preboot volume was found. Is your system okay?"
   exit 1
fi

diskutil list /dev/disk0 | grep -Ei 'asahi|linux|EFI' | while read i; do
    echo " Asahi Linux seems to be installed on this device. Is this correct?"
    read -p "hi" y n
    read -r -p ans
    echo "oh ok"
done

diskutil info /dev/disk0 | grep -i "GUID" | while read i; do
  echo "$i"
done
diskutil info /dev/disk0 | grep -i "Disk Size:" | while read i; do
  echo "$i"
done

# worst mistake of my life hell no, later
sleep 1
printf '\n'; kill $! && wait $!; } 2>/dev/null

 printf ' -> installing astra  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &
git clone --quiet https://github.com/vastrave/astra
{ printf '\n'; kill $! && wait $!; } 2>/dev/null

sleep 0.1

 echo
 printf ' -> managing files  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &
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

echo             
echo " --> completed setup | astra"
    sudo rm -rf /tmp/astrap
    sudo rm -rf astra/install
    sudo rm -rf astra/scripts
sleep 0.8

echo
echo " --> run astra.ibpkg to install recommended packages."
echo " welcome to astra v0.0.1"
echo " reboot whenever you want to apply astra."
echo
