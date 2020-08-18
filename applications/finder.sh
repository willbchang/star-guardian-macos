echo "Application -> File Manager: Finder"
echo "  Finder -> General"
echo "    Hide icons for Hard disks on the desktop"
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false

echo "    Show icons for External disks on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

echo "    Hide icons for CDs, DVDs on the desktop"
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

echo "    Hide icons for Connected servers on the desktop"
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false


echo "  Finder -> Sidebar"
echo "    Install tool to manage Finder sidebar: mysides"
brew cask install mysides

echo "    Remove Desktop from sidebar"
mysides remove Desktop

echo "    Remove Recents from sidebar"
mysides remove Recents

echo "    Add Home directory to sidebar"
mysides add $(whoami) file:///Users/$(whoami)

echo "    Remove Recent Tags from sidebar"
osascript finder-sidebar.scpt


echo "  Finder -> Advanced"
echo "    Show all file name extensions"
defaults write -g AppleShowAllExtensions -bool true
