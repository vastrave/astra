 printf ' -> installing additional packages  '
(while :; do for c in / - \\ \|; do printf '\b%s' "$c"; sleep 0.2; done; done) &

if [ -e "/System" ]; then
   brew update
#  brew upgrade

brew install --quiet llvm imagemagick python3 dockx jwbargsten/misc/defbro dmg2img
brew install --quiet --cask marta menubarx
pip3 install -q keep
# HOMEBREW_NO_AUTO_UPDATE=1 brew install firefox
fi

if [ -e "/root" ]; then
sleep 1 # define
{ printf '\n'; kill $! && wait $!; } 2>/dev/null
