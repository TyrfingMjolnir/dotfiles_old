#!/bin/zsh
set -e

# This is how to read the different applications potential attributes

## For machine wide settings
### find /Library/Preferences -iname "com.apple*" -exec defaults read {} \;

## For user settings
### find ~/Library/Preferences -iname "com.apple*" -exec defaults read {} \;

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show the ~/Library folder
chflags nohidden ~/Library

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set the Defaults screenshot format; avialable options: PNG TIFF PDF JPG
defaults write com.apple.screencapture type PNG

# Set Finder's LoginWindowText; this setting in particular requires _sudo_ to run
defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "If you find me astray from my owner please contact me on phone, text or FaceTime audio at: +47 1234 5678"

# Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist || true
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist || true
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist || true

# Mac App Store update check frequency (change 7 to any number of days)
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 30

# Expand print dialog by default (revert by changing TRUE to FALSE)
defaults write -g PMPrintingExpandedStateForPrint -bool TRUE



echo 'Finder preferences set'
