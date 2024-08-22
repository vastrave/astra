#!/bin/bash

function astra() {
echo "
                       .::.
                    .:'  .:     astra v0.1
          ,MMM8&&&.:'   .:'     saturn v?
         MMMMM88&&&&  .:'       
        MMMMM88&&&&&&:'         OS: $(system_profiler SPSoftwareDataType | grep -o "macOS[^']*")
        MMMMM88&&&&&&           architecture: $(uname -m)
      .:MMMMM88&&&&&&           kernel: $(uname -or)
    .:'  MMMMM88&&&&            memory$(system_profiler SPHardwareDataType | grep -Eo ":[^']*GB|TB")
  .:'   .:'MMM8&&&'             terminal: $(echo $TERM_PROGRAM) ($(echo $TERM))
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
# -------------------------------------------------------------------------------------------------
function astra.c() {
open ~/astra/conf.sh -e
}
function astra.conf() {
open ~/astra/conf.sh -e
}
function astra.config() {
open ~/astra/conf.sh -e
}
# -------------------------------------------------------------------------------------------------
function astra.ibpkg() {
sh astra/.tools/pkgs.sh
}
# -------------------------------------------------------------------------------------------------
function astra.reIns() {
echo " astra and its components will reinstall."
read
rm -rf ~/astra
rm -rf ~/saturn
rm -rf ~/.config/astra
echo
echo " --> reinstall astra"
curl -L https://dub.sh/astra | sh
}
function astra.reInstall() {
echo " astra and its components will reinstall."
read
rm -rf ~/astra
rm -rf ~/saturn
rm -rf ~/.config/astra
echo
echo " --> reinstall astra"
curl -L https://dub.sh/astra | sh
}
function astra.rI() {
echo " astra and its components will reinstall."
read
rm -rf ~/astra
rm -rf ~/saturn
rm -rf ~/.config/astra
echo
echo " --> reinstall astra"
curl -L https://dub.sh/astra | sh
}
# -------------------------------------------------------------------------------------------------
# function astra.sr() {
