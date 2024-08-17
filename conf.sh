#!/usr/bin/env bash
# astra config

# default

# system
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
defaults write com.apple.menuextra.clock DateFormat HH:mm:ss
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.CrashReporter UseUNC 1
defaults write com.apple.universalaccess stickyKey 1
defaults write com.apple.screencapture "type" -string "jpg"
defbro org.mozilla.firefox

# window management
# yabai --start-service

# desktop & dock
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/astra/assets/desktop/background/arch1.png'"

defaults write com.apple.dock single-app -bool true
# defaults write com.apple.dock single-app -bool no;killall Dock

defaults write com.apple.dock orientation right
defaults write com.apple.dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.8
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.dock "scroll-to-open" -bool "true"
defaults write com.apple.dock showhidden -bool TRUE
defaults write com.apple.dock tilesize -int 54
defaults write com.apple.dock mineffect scale
defaults write com.apple.dock largesize -int 56
# defaults write com.apple.dock largesize -float 128

# input
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
defaults write com.apple.HIToolbox AppleFnUsageType -int "2"
defaults write com.apple.AppleMultitouchTrackpad "DragLock" -bool "true"

# apps
# -- x/twitter
defaults write com.twitter.twitter-mac TypeAnywhereToTweet -bool true
defaults write com.twitter.twitter-mac openLinksInBackground -bool true
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true
defaults write com.twitter.twitter-mac UserTimelineDerepeater -bool true

# -- finder
defaults write com.apple.finder QuitMenuItem -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true"
   # search path
   # This Mac : "SCev"
   # Current Folder : "SCcf"
   # Previous Path : "SCsp"
   defaults write com.apple.finder FXDefaultSearchScope SCcf

   # -- terminal
   defaults write com.apple.Terminal "FocusFollowsMouse" -bool "true"

# -- app store
defaults write com.apple.appstore ShowDebugMenu -bool true

# -- safari
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true"

# -- apple music
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "true" && killall Music

killall Dock
   killall Finder
      killall Safari
         killall Terminal
            killall Music

echo             
echo "--> set astra configuration."
echo "--> Some changes require a reboot. The system will reboot automatically in 10s (press Ctrl-Z to stop)"
sleep 10
   sudo nvram "recovery-boot-mode=unused"
   sudo reboot
