#!/usr/bin/env bash
# astra config

# default

# system
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
defaults write com.apple.menuextra.clock DateFormat HH:mm:ss
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.CrashReporter UseUNC 1
defaults write com.apple.universalaccess stickyKey 1
defbro org.mozilla.firefox

# window management
# yabai --start-service

# dock
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/astra/assets/desktop/background/arch1.png'"

defaults write com.apple.dock single-app -bool true
# defaults write com.apple.dock single-app -bool no;killall Dock

defaults write com.apple.dock orientation right
defaults write com.apple.dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.8
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
# defaults write com.apple.dock largesize -float 128

# input
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false

# apps
# -- x/twitter
defaults write com.twitter.twitter-mac TypeAnywhereToTweet -bool true
defaults write com.twitter.twitter-mac openLinksInBackground -bool true
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true
defaults write com.twitter.twitter-mac UserTimelineDerepeater -bool true

# -- finder
defaults write com.apple.finder QuitMenuItem -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
   # search path
   # This Mac : "SCev"
   # Current Folder : "SCcf"
   # Previous Path : "SCsp"
   defaults write com.apple.finder FXDefaultSearchScope SCcf

# -- app store
defaults write com.apple.appstore ShowDebugMenu -bool true

killall Dock
   killall Finder
      sudo pkill TouchBarServer
         killall ControlStrip
