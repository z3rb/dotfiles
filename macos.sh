#!/usr/bin/env zsh
set -euo pipefail

# XCode
echo "> Installing XCode..."
if ! xcode-select -p &>/dev/null; then
    xcode-select --install
else
    echo "XCode already installed."
fi

# Finder
echo "> Setting Finder defaults..."
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder FXRemoveOldTrashItems -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder QuitMenuItem -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
killall Finder

# Screen
echo "> Setting screen defaults..."
mkdir -p ${HOME}/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
killall SystemUIServer

# Dock
echo "> Setting dock defaults..."
defaults write com.apple.dock expose-group-apps -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock show-recents -bool false
killall Dock

# Other
echo "> Setting other defaults..."
defaults write com.apple.AdLib allowApplePersonalizedAdvertising -bool false
defaults write com.apple.LaunchServices LSQuarantine -bool false
