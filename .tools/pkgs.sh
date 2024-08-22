 printf ' -> installing additional packages  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &
   brew update
   brew upgrade

brew install llvm imagemagick python3 dockx jwbargsten/misc/defbro
pip3 install keep
# HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
{ printf '\n'; kill $! && wait $!; } 2>/dev/null
