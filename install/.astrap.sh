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

echo
read -r -p " --> What is your name?: " usrn
   echo "     Please wait.."
    sleep 1.5
   echo
   echo "     Welcome to astrap."
    sleep 1
   echo "     First of all, which theming do you prefer for astra?"
   echo "     (You can find images of each theme at https://github.com/vastrave/astra)"

echo
   $usrm=read -r -p "  1. Modern" th1
     if $th1; then
     echo "  ! Would you like to install: \033[1;34mModern\033[0m?"
     $tcd=read
     sleep 0.8
     echo "  ! Your preference has been saved. astra will install as [\033[1;34mModern\033[0m] later."
     fi

     echo "    Begin the installation process now?"
     read

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

printf ' -> injecting devaste payload  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &
git clone --quiet -n --depth=1 --filter=tree:0 \
    https://github.com/vastrave/devaste
    #
cd devaste
  git sparse-checkout set --no-cone install
    git checkout
    sh devaste/inject.sh
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
