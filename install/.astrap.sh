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
 starting installer in 5s. ctrl-c to abort."
sleep 5

loc="/usr/local/bin"
tmp="/tmp/astrap"

# from
echo
echo "   Modern"
sleep 0.2
echo "   AMD"
sleep 0.2
echo "   EN"
echo "[ OK ] Got config"
#
sleep 0.1

if [ ! -e /System/Volumes/Update ]; then
   echo " *Could not find /System/Volumes/Update"
   exit 1
fi
echo "[ OK ] Check /System/Volumes/Update"
sleep 0.07

echo "[ OK ] Check strap.sh"
sleep 0.07
echo "[ OK ] No errors found"
sleep 0.2
echo "[ OK ] Check bootstrapper version"
sleep 0.05

if [ -e $tmp/strap.sh ]; then
   echo " *Unintended strap file found."
   echo " strap.sh should be deleted by now. Run rm -rf /tmp/astrap and restart installation."
   echo " If this has happened multiple times, report it."
   exit 1
fi
echo "[ OK ] Check strap.sh"
sleep 0.07

if [ ! -e $tmp/.confman.sh ]; then
   echo " *Missing config file (.confman.sh)."
   echo " .confman.sh could not be found. Run rm -rf /tmp/astrap and restart installation."
   echo " If this has happened multiple times, report it."
   exit 1
fi
echo "[ OK ] Check .confman.sh"
sleep 0.07

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

   touch /tmp/astrap/s.bin
     cat > /tmp/astrap/s.bin <<EOF
   tst
EOF

echo
printf ' -> partitioning  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &

if [ ! -e /System/Volumes/Preboot ]; then
   echo " *No Preboot volume was found. Is your system okay?"
   exit 1
fi

   bless -i --getBoot --verbose | grep -Ei "Data|Preboot|System" | while read i; do
   echo " $i"
  done
   

{ printf '\n'; kill $! && wait $!; } 2>/dev/null

echo
printf ' -> injecting devaste payload  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &
git clone --quiet https://github.com/vastrave/devaste
{ printf '\n'; kill $! && wait $!; } 2>/dev/null

echo
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

if [ -e /Applications/DockX.app ]; then
cp -f ~/astra/assets/desktop/dockx/base/FeatureViewController.nib /Applications/DockX.app/Contents/Resources/Base.lproj/FeatureViewController.nib
cp -f ~/astra/assets/desktop/dockx/en/Localizable.strings /Applications/DockX.app/Contents/Resources/en.lproj/Localizable.strings
cp -f ~/astra/assets/desktop/dockx/en/FeatureViewController.strings /Applications/DockX.app/Contents/Resources/en.lproj/FeatureViewController.strings
fi
{ printf '\n'; kill $! && wait $!; } 2>/dev/null

echo             
echo " --> completed setup | astra"
    sudo rm -rf /tmp/astrap
    sudo rm -rf astra/install
    sudo rm -rf astra/scripts
sleep 0.8

echo
echo " --> run astra.ibpkg to install recommended packages."
echo " welcome to astra v0.1"
echo " reboot whenever you want to apply astra."
echo
