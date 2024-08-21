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

      echo " Getting system information."
      sleep 2
      echo
      echo "\033[1;34m       OS:\033[0m $(system_profiler SPSoftwareDataType | grep -o "macOS[^']*")
       \033[0;37marchitecture\033[0m: $(uname -m)
       \033[0;37mkernel\033[0m: $(uname -or)
       \033[1;35mmemory\033[0m$(system_profiler SPHardwareDataType | grep -Eo ":[^']*GB|TB")"
      
    echo
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

     cp -f astra/install/.astrap.sh "$tmp"
     rm -rf astra/install

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

