#!/bin/sh

# TODO: review the following

echo "$(tput setaf 6)==>$(tput sgr0) Update macOS defaults..."

echo "$(tput setaf 6)==>$(tput sgr0) Show the ~/Library folder"
chflags nohidden ~/Library

# TODO: not working
echo "$(tput setaf 6)==>$(tput sgr0) Show battery percentage"
defaults write com.apple.menuextra.battery ShowPercent -bool true

echo "$(tput setaf 6)==>$(tput sgr0) Show time in menu bar"
defaults write com.apple.menuextra.battery ShowTime -bool true

echo "$(tput setaf 6)==>$(tput sgr0) Save screenshots to the desktop"
defaults write com.apple.screencapture location -string "$HOME/Desktop"

echo "$(tput setaf 6)==>$(tput sgr0) Save screenshots in PNG format" # (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

echo "$(tput setaf 6)==>$(tput sgr0) Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# TODO: not working properly
echo "$(tput setaf 6)==>$(tput sgr0) Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write com.apple.AppleMultitouchTrackpad Clicking 1

echo "$(tput setaf 6)==>$(tput sgr0) Use scroll gesture with the Ctrl (^) modifier key to zoom"
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true

# TODO: add hide Time Machine from Toolbar
echo "$(tput setaf 6)==>$(tput sgr0) Prevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# TODO: not working
echo "$(tput setaf 6)==>$(tput sgr0) Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

echo "$(tput setaf 6)==>$(tput sgr0) When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "$(tput setaf 6)==>$(tput sgr0) Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Use AirDrop over every interface."
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Safari
# ======
echo "$(tput setaf 6)==>$(tput sgr0) Safari"

echo "$(tput setaf 6)==>$(tput sgr0) Set Safari’s home page to 'about:blank' for faster loading"
defaults write com.apple.Safari HomePage -string "about:blank"

echo "$(tput setaf 6)==>$(tput sgr0) Prevent Safari from opening ‘safe’ files automatically after downloading"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Hide Safari’s bookmarks bar by default"
defaults write com.apple.Safari ShowFavoritesBar -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Enable the Develop menu and the Web Inspector in Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Mail
# ====
echo "$(tput setaf 6)==>$(tput sgr0) Mail"

echo "$(tput setaf 6)==>$(tput sgr0) Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>' in Mail.app"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app"
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

# Transmission
# ============
echo "$(tput setaf 6)==>$(tput sgr0) Transmission"

echo "$(tput setaf 6)==>$(tput sgr0) Use '~/Documents/Torrents' to store incomplete downloads"
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents"

echo "$(tput setaf 6)==>$(tput sgr0) Don’t prompt for confirmation before downloading"
defaults write org.m0k.transmission DownloadAsk -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Trash original torrent files"
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

echo "$(tput setaf 6)==>$(tput sgr0) Hide the donate message"
defaults write org.m0k.transmission WarningDonate -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Hide the legal disclaimer"
defaults write org.m0k.transmission WarningLegal -bool false

# Activity Monitor
# ================
echo "$(tput setaf 6)==>$(tput sgr0) Activity Monitor"

echo "$(tput setaf 6)==>$(tput sgr0) Sort Activity Monitor results by CPU usage"
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

echo "$(tput setaf 6)==>$(tput sgr0) Show the main window when launching Activity Monitor"
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

echo "$(tput setaf 6)==>$(tput sgr0) Visualize CPU usage in the Activity Monitor Dock icon"
defaults write com.apple.ActivityMonitor IconType -int 5

echo "$(tput setaf 6)==>$(tput sgr0) Show all processes in Activity Monitor"
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Screen
# ======
echo "$(tput setaf 6)==>$(tput sgr0) Screen"

# Hot corners
# Possible values:
#   0: no-op
#   2: Mission Control
#   3: Show application windows
#   4: Desktop
#   5: Start screen saver
#   6: Disable screen saver
#   7: Dashboard
#  10: Put display to sleep
#  11: Launchpad
#  12: Notification Center
echo "$(tput setaf 6)==>$(tput sgr0) Set lower-left hot corner to put display on sleep"
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-bl-modifier -int 0

# Finder
# ======
echo "$(tput setaf 6)==>$(tput sgr0) Finder"

echo "$(tput setaf 6)==>$(tput sgr0) Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

# Disable and kill Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock

# TODO: Always open everything in Finder's icon view. This is important.
# TODO: also sort by kind and cleanup by name
# defaults write com.apple.Finder FXPreferredViewStyle Nlsv

echo "$(tput setaf 6)==>$(tput sgr0) Expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

echo "$(tput setaf 6)==>$(tput sgr0) Allow text-selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo "$(tput setaf 6)==>$(tput sgr0) Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo "$(tput setaf 6)==>$(tput sgr0) Enable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true
