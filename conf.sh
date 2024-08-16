#!/usr/bin/env bash
# astra config

# default

# sys
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
defaults write com.apple.CrashReporter UseUNC 1
defbro org.mozilla.firefox

# dock
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/astra/assets/desktop/background/arch1.png'"

defaults write com.apple.dock single-app -bool true
# defaults write com.apple.dock single-app -bool no;killall Dock

defaults write com.apple.dock orientation right
defaults write com.apple.dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.8

# apps
defaults write com.apple.finder QuitMenuItem -bool true; killall Finder
defaults write com.apple.appstore ShowDebugMenu -bool true

killall Dock
   killall Finder
      kilalll TouchBarServer
