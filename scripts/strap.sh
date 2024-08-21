#!/bin/sh

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

mkdir /tmp/astrap

tmp=/tmp/astrap
cd $tmp

     cp -f ~/astra/scripts/.astrap.sh /tmp/astrap
     sudo rm -rf ~/astra/scripts/strap.sh
     
caffeinate -dis sudo -E sh .astrap.sh

}

main
