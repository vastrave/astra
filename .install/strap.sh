#!/bin/sh

# set -e

 macsys="/System"
if [ ! -d "$macsys" ]; then
    echo " It seems you are on an unsupported device."
    echo " astra can only be installed on macOS or Linux systems."
    exit 1
else
   echo
   echo " hold on..."
   
fi


#    root="/root"
# if [ -d "$root" ]; then
#    echo "--> astra has not yet been tested on Linux. Continue? (enter ↵)"
#    read

    echo " Setting installer up for you..."
    echo
    git clone -n --depth=1 --filter=tree:0 \
    https://github.com/satomiify/astra/
    #
cd astra
  git sparse-checkout set --no-cone install
    git checkout

    cd
    
mkdir /tmp/astrap

tmp=/tmp/astrap

     cp -f astra/.install/.astrap.sh "$tmp"
     rm -rf astra/.install

        cd "$tmp"

     if [ "$USER" != "root" ]; then
     echo
       echo "--> astrap needs to run as root;"
         echo "  please enter your password if prompted."
           echo
             caffeinate -dis sudo -E sh .astrap.sh
    else
        caffeinate -dis sudo -E sh .astrap.sh
    fi
 fi

