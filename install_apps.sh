#!/bin/bash

# Lay down xcode build tools
xcode-select --install

# Homebrew
# 1. Fix perms
sudo chown -R $(whoami) $(brew --prefix)/*
# 2. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Regular installs
brew install azure-cli \
  atomicparsley \
  ffmpeg \
  mas \
  yt-dlp/taps/yt-dlp

# Cask installs
brew install --cask \
  1password \
  aerial \
  alfred \
  alt-tab \ 
  appcleaner \ 
  audio-hijack \
  azure-data-studio \
  cakebrew \
  cheatsheet \
  discord \
  dropbox \
  epic-games \
  eul \
  iina \
  intune-company-portal \
  iterm2 \
  itsycal \
  keka \
  loopback \
  microsoft-azure-storage-explorer \
  microsoft-edge \
  microsoft-office \
  monitorcontrol \
  numi \
  obs \
  obs-ndi \
  parallels \
  rocket \
  spotify \
  vanilla \
  visual-studio-code \
  webex \
  zoom
  
# Extra (unofficial) Homebrew stuff
brew install --cask brew tap homebrew/cask-drivers
brew install --cask elgato-control-center \
  elgato-camera-hub \
  elgato-stream-deck

# Quicklook plugins
brew install --cask \
  qlcolorcode \
  quicklook-json \
  quicklook-csv
  
# Clean up
brew cleanup

# Lay down oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# App Store Installs

# get Apple ID
echo ""
echo "Enter AppleID to signin to Mac App Store:"
read -p "  AppleID (john@foo.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

mas install 1440147259 # AdGuard for Safari
mas install 545519333 # Amazon Prime Video
mas install 937984704 # Amphetamine
mas install 640199958 # Apple Developer
mas install 561712678 # AudioSwitcher
mas install 417375580 # BetterSnapTool
mas install 1518425043 # Boop
mas install 1198176727 # Controller for HomeKit
mas install 953286746 # Darkroom
mas install 290986013 # Deliveries
mas install 503039729 # Fotor
# GarageBand
mas install 682658836
# Hush
mas install 1544743900
# Infuse 7
mas install 1136220934
# LanScan
mas install 472226235
# Levelator
mas install 149332648
# Messenger
mas install 1480068668
# MS Remote Desktop
mas install 1295203466
# Pixelmator Classic
mas install 407963104
# Podcast Chapters
mas install 1070963477
# Poolsuite FM
mas install 1514817810
# Quick Camera
mas install 598853070
# Raindrop.io for Safari
mas install 957810159
# Reeder 5
mas install 1529448980
# Shut Up Comment Blocker
mas install 1015043880
# Soulver 2
mas install 413965349
# Spark
mas install 1176895641
# SuperAgent for Safari
mas install 1568262835
# TestFlight
mas install 899247664
# Twitter
mas install 1482454543
# Unsplash Wallpapers 
mas install 1284863847
# Vinegar
mas install 1591303229
# WeatherBug
mas install 1059074180

# macOS Config
# Show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status and path bar in Finder 
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

killall Finder

# Note: Can't be installed automatically
# Waves Central - https://www.waves.com/downloads/central
# WindowMirror
