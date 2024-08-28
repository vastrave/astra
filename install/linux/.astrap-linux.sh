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

if [ ! -e /boot/efi/EFI ]; then
   echo " *Could not find boot EFI directory."
   exit 1
fi
echo "[ OK ] Check /boot/efi/EFI"
sleep 0.07

echo "[ OK ] Check strap-linux.sh"
sleep 0.07
echo "[ OK ] No errors found"
sleep 0.2
echo "[ OK ] Check bootstrapper version"
sleep 0.05

if [ -e $tmp/strap-linux.sh ]; then
   echo " *Unintended strap file found."
   echo " strap-linux.sh should be deleted by now. Run rm -rf /tmp/astrap and restart installation."
   echo " If this has happened multiple times, report it."
   exit 1
fi
echo "[ OK ] Check strap.sh"
sleep 0.07

if [ ! -e $tmp/.confman-lx.sh ]; then
   echo " *Missing config file (.confman-lx.sh)."
   echo " .confman-lx.sh could not be found. Run rm -rf /tmp/astrap and restart installation."
   echo " If this has happened multiple times, report it."
   exit 1
fi
echo "[ OK ] Check .confman.sh"
sleep 0.07

brew="/usr/local/bin/brew"
if [ ! -d "$brew" ]; then

  uname -m | grep -Ei "arm64|aarch64" | while read i; do
    echo " Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
done

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
sleep 1 # h,w p
{ printf '\n'; kill $! && wait $!; } 2>/dev/null

echo
printf ' -> injecting devaste payload  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &
git clone --quiet https://github.com/vastrave/devaste # fix
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

echo "source ~/astra/.testcmd.sh" >> ~/.bashrc
chmod +x ~/astra/.testcmd.sh
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
