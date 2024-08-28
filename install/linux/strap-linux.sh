#!/bin/sh

sleep 0.1
set -e

 # linux check
 root="/root"
if [ ! -d "$root" ]; then
    echo " You are on an unsupported system."
    echo " astra can only be installed on macOS or Linux."
        echo " If you are on a macOS system, use the Linux strapper instead."
    exit 1
else
   echo "--> astra has not yet been tested on Linux. Continue? (enter ↵)"
   read
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
      echo -e "\033[1;34m       OS:\033[0m $(lsb_release -a | sed -n -e 's/^.*Distributor //p')
                $(uname -o)
       \033[0;37marchitecture\033[0m: $(uname -m)
       \033[0;37mkernel\033[0m: $(uname -r)
       \033[1;35mmemory\033[0m: $(var=$(free -h | awk '/^Mem:/{print $2}') && echo "$var")"
      
    echo
    echo " Setting installer up for you..."
    echo
    git clone -q -n --depth=1 --filter=tree:0 \
    https://github.com/vastrave/astra/
    #
cd astra
  git sparse-checkout set --no-cone linux
    git checkout

    cd
    
mkdir /tmp/astrap

tmp=/tmp/astrap

     cp -f astra/install/linux/.confman-lx.sh "$tmp"
     cp -f astra/install/linux/.astrap-linux.sh "$tmp"
     rm -rf astra

        cd "$tmp"

     if [ "$USER" != "root" ]; then
     echo
       echo "--> astrap needs to run as root;"
         echo "  please enter your password if prompted."
           echo
             systemd-inhibit sudo -E sh .confman-lx.sh
    else
        systemd-inhibit sudo -E sh .confman-lx.sh
    fi


