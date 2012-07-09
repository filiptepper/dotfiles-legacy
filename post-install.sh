defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain AppleFontSmoothing -int 2
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
chflags nohidden ~/Library
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2
defaults write com.apple.Mail DisableReplyAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write -g ApplePressAndHoldEnabled -bool false
hash tmutil &> /dev/null && sudo tmutil disablelocal
defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false