#!/bin/bash

function astra() {
echo "
                       .::.
                    .:'  .:     \033[1;34mastra\033[0m v0.1
          ,MMM8&&&.:'   .:'     saturn v?
         MMMMM88&&&&  .:'       
        MMMMM88&&&&&&:'         \033[1;34mOS:\033[0m $(system_profiler SPSoftwareDataType | grep -o "macOS[^']*")
        MMMMM88&&&&&&           \033[0;33marchitecture:\033[0m $(uname -m)
      .:MMMMM88&&&&&&           \033[0;37mkernel:\033[0m $(uname -or)
    .:'  MMMMM88&&&&            \033[1;32mmemory\033[0m$(system_profiler SPHardwareDataType | grep -Eo ":[^']*GB|TB")
  .:'   .:'MMM8&&&'             \033[1;30mterminal:\033[0m $(echo $TERM_PROGRAM) ($(echo $TERM))
  :'  .:'
  '::'  
     "

}

function astra.a() {
sh ~/.config/astra/conf.sh
}
function astra.apply() {
sh ~/.config/astra/conf.sh
}
# -------------------------------------------------------------------------------------------------
function astra.c() {
open ~/.config/astra/conf.sh -e
}
function astra.conf() {
open ~/.config/astra/conf.sh -e
}
function astra.config() {
open ~/.config/astra/conf.sh -e
}
# -------------------------------------------------------------------------------------------------
function astra.ibpkg() {
sh astra/.tools/pkgs.sh
}
# -------------------------------------------------------------------------------------------------
function astra.wipe() {
sh astra/.tools/wipe.sh
}
# -------------------------------------------------------------------------------------------------
# function astra.sr() {
