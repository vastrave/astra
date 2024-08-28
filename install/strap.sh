#!/bin/sh

sleep 0.1
set -e

 # macOS check
 macsys="/System"
if [ ! -d "$macsys" ]; then
    echo " You are on an unsupported system."
    echo " astra can only be installed on macOS or Linux."
    echo " If you are on a Linux system, use the Linux strapper instead."
    exit 1
else
   echo
   echo " Hold on..."

fi

# ------------------------------------------------------------------------------------------------
 dir=".config/astra"
if [ -d "$dir" ]; then
   echo "--> astra is already installed on this device."
   exit 1
fi

      echo " Getting system information."
      echo
      sleep 2
      echo "\033[1;34m       OS:\033[0m $(system_profiler SPSoftwareDataType | grep -o "macOS[^']*")
       \033[0;37marchitecture\033[0m: $(uname -m)
       \033[0;37mkernel\033[0m: $(uname -or)
       \033[1;35mmemory\033[0m$(system_profiler SPHardwareDataType | grep -Eo ":[^']*GB|TB")"
      
    echo
    echo " Setting installer up for you..."
    echo
    git clone -q -n --depth=1 --filter=tree:0 \
    https://github.com/vastrave/astra/
    #
cd astra
  git sparse-checkout set --no-cone install
    git checkout

    cd
    
mkdir /tmp/astrap

tmp=/tmp/astrap

     cp -f astra/install/.confman.sh "$tmp"
     cp -f astra/install/.astrap.sh "$tmp"
     rm -rf astra

        cd "$tmp"

     if [ "$USER" != "root" ]; then
     echo
       echo "--> astrap needs to run as root;"
         echo "  please enter your password if prompted."
           echo
             caffeinate -dis sudo -E sh .confman.sh
    else
        caffeinate -dis sudo -E sh .confman.sh
    fi

