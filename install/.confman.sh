echo
read -r -p " --> What is your name?: " usrn
   echo "     Please wait.."
    sleep 1.5
   echo
   echo "     astra Interactive Pre-Installation Setup"
   sleep 2
   echo "     Welcome."
    sleep 3
    echo
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

     sleep 3
     echo
   echo "     Now, please select your graphics card below."
   echo "     This is needed if you want proper graphic rendering, as astra"
   echo "     updates some values that mess with them."

   echo
   $usrm=read -r -p "  1. AMD" th1
     if $th1; then
     echo "  ! Is this correct?: \033[0;31mAMD\033[0m"
     $tcd=read
     sleep 0.8
     echo "    Understood. Saved graphics card as \033[0;31mAMD\033[0m."
     fi

       sleep 3
     echo
   echo "     Lastly, what language should astra be installed in?"
   echo "     (Currently, only English is supported, though I hope to"
   echo "     expand this as time goes.)"

   echo
   $usrm=read -r -p "  1. English" th1
     if $th1; then
     echo "  ! So, install astra in English?"
     $tcd=read
     sleep 0.8
     echo "    Understood. astra will be installed in English."
     fi

     sleep 4
     echo "    Thank you for your time."
     sleep 2
     echo "    Begin the installation process now?"
     read

     sleep 2

     clear

          if [ "$USER" != "root" ]; then
     echo
       echo "--> astrap needs to run as root;"
         echo "  please enter your password if prompted."
           echo
             caffeinate -dis sudo -E sh .astrap.sh
    else
        caffeinate -dis sudo -E sh .astrap.sh
    fi
