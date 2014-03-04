defaults write com.apple.dock tilesize -int 16
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock dashboard-in-overlay -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation -string right

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari ProxiesInBookmarksBar "()"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

chflags nohidden ~/Library

defaults write com.irradiatedsoftware.SizeUp StartAtLogin -bool true
defaults write com.irradiatedsoftware.SizeUp ShowPrefsOnNextStart -bool false

defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
hash tmutil &> /dev/null && sudo tmutil disablelocal

killall Dock
killall Finder

sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage