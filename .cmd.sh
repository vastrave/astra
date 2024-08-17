#!/bin/bash

function astra() {
echo "
                       .::.
                    .:'  .:     astra v0.1
          ,MMM8&&&.:'   .:'     by: satomiify
         MMMMM88&&&&  .:'       
        MMMMM88&&&&&&:'         architecture: $(uname -m)
        MMMMM88&&&&&&           kernel: $(uname -or)
      .:MMMMM88&&&&&&           OS: $(system_profiler SPSoftwareDataType | grep -o "macOS[^']*")
    .:'  MMMMM88&&&&            memory $(system_profiler SPHardwareDataType | grep -Eo ":[^']*GB|TB")
  .:'   .:'MMM8&&&'             terminal: $(echo $TERM_PROGRAM)
  :'  .:'
  '::'  
     "

}

function astra.a() {
sh ~/astra/conf.sh
}
function astra.apply() {
sh ~/astra/conf.sh
}

function astra.c() {
open ~/astra/conf.sh -e
}
function astra.conf() {
open ~/astra/conf.sh -e
}
function astra.config() {
open ~/astra/conf.sh -e
}
