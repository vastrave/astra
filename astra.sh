#!/bin/bash

"\e[1;32m[->]\e[0m" astra
echo "hi"
HOMEBREW_NO_AUTO_UPDATE=1 brew install llvm
git clone --recursive https://github.com/AsahiLinux/m1n1.git
make
