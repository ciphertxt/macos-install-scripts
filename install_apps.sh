#!/bin/bash

# Lay down xcode build tools
echo "Installling XCode build tools..."
xcode-select --install

# Homebrew
echo "Installing Homebrew..."
# 1. Fix perms
sudo chown -R $(whoami) $(brew --prefix)/*
# 2. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Regular installs
echo "Installing brew formulae..."
brew install azure-cli \
  atomicparsley \
  ffmpeg \
  mas \
  yt-dlp/taps/yt-dlp

# Cask installs
echo "Installing brew casks..."
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
echo "Installing additional cask drivers..."
brew install --cask brew tap homebrew/cask-drivers
brew install --cask elgato-control-center \
  elgato-camera-hub \
  elgato-stream-deck

# Quicklook plugins
echo "Installing QL plugins..."
brew install --cask \
  qlcolorcode \
  quicklook-json \
  quicklook-csv
  
# Clean up
echo "Cleaning up..."
brew cleanup

# Lay down oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# App Store Installs
echo "Installing Mac App Store apps..."

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
mas install 682658836 # GarageBand
mas install 1544743900 # Hush
mas install 1136220934 # Infuse 7
mas install 472226235 # LanScan
mas install 149332648 # Levelator
mas install 1480068668 # Messenger
mas install 1295203466 # MS Remote Desktop
mas install 407963104 # Pixelmator Classic
mas install 1070963477 # Podcast Chapters
mas install 1514817810 # Poolsuite FM
mas install 598853070 # Quick Camera
mas install 957810159 # Raindrop.io for Safari
mas install 1529448980 # Reeder 5
mas install 1015043880 # Shut Up Comment Blocker
mas install 413965349 # Soulver 2
mas install 1176895641 # Spark
mas install 1568262835 # SuperAgent for Safari
mas install 899247664 # TestFlight
mas install 1482454543 # Twitter
mas install 1284863847 # Unsplash Wallpapers 
mas install 1591303229 # Vinegar
mas install 1059074180 # WeatherBug

# Fonts!
echo "Installing fonts..."
cd ~/Library/Fonts

echo "Downloading font CascadiaCode"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-Bold.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-BoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-ExtraLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-ExtraLightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-Italic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-Light.otf" 
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-LightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-Regular.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-SemiBold.otf" 
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-SemiBoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-SemiLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCode-SemiLightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-Bold.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-BoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-ExtraLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-ExtraLightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-Italic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-Light.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-LightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-Regular.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-SemiBold.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-SemiBoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-SemiLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaCodePL-SemiLightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-Bold.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-BoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-ExtraLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-ExtraLightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-Italic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-Light.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-LightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-Regular.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-SemiBold.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-SemiBoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-SemiLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMono-SemiLightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-Bold.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-BoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-ExtraLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-ExtraLightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-Italic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-Light.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-LightItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-Regular.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-SemiBold.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-SemiBoldItalic.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-SemiLight.otf"
curl -O "https://github.com/ciphertxt/macos-install-scripts/raw/main/assets/fonts/CascadiaCode/CascadiaMonoPL-SemiLightItalic.otf"

# macOS Config
echo "Setting macOS defaults..."
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
