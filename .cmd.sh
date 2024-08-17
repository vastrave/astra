#!/bin/bash

function astra() {
echo "
                       .::.
                    .:'  .:     astra v0.1
          ,MMM8&&&.:'   .:'     by: satomiify
         MMMMM88&&&&  .:'       
        MMMMM88&&&&&&:'         architecture: $(uname -m)
        MMMMM88&&&&&&           kernel: $(uname -or)
      .:MMMMM88&&&&&&
    .:'  MMMMM88&&&&
  .:'   .:'MMM8&&&'
  :'  .:'
  '::'  
     "

}

function "astra -a"() {
sh ~/astra/conf.sh
}

function "astra -c"() {
open ~/astra/conf.sh -e
}
