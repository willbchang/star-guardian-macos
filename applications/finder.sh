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
