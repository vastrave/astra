#!/bin/sh

     set -e

 macsys="/System"
if [ ! -d "$macsys" ]; then
    echo " It seems you are on an unsupported device."
    echo " astra can only be installed on macOS or Linux systems."
    exit 1
fi


    root="/root"
if [ -d "$root" ]; then
    echo " astra has not yet been tested on Linux. Continue? (enter ↵)"
    read

    echo " Settings things up for you..."
mkdir /tmp/astrap

tmp=/tmp/astrap
cd $tmp

     cp -f ~/astra/scripts/.astrap.sh /tmp/astrap
     sudo rm -rf ~/astra/scripts/strap.sh
     
caffeinate -dis sudo -E sh .astrap.sh
