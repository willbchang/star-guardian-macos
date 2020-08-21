echo "Application -> File Manager: Finder"
echo "  Finder -> UI"
echo "    Use column view in all Finder windows by default"
# icnv: Icon View        (Command + 1)
# Nlsv: List View        (Command + 2)
# clmv: Column View      (Command + 3)
# Flwv: Cover Flow View  (Command + 4)
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

echo "    Remove toolbar icon"
/usr/libexec/PlistBuddy -c "Delete :NSToolbar\ Configuration\ Browser:TB\ Item\ Identifiers" ~/Library/Preferences/com.apple.finder.plist 
/usr/libexec/PlistBuddy -c "Add :NSToolbar\ Configuration\ Browser:TB\ Item\ Identifiers array" ~/Library/Preferences/com.apple.finder.plist


echo "  Finder -> General"
echo "    Hide icons for Hard disks on the desktop"
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false

echo "    Show icons for External disks on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

echo "    Hide icons for CDs, DVDs on the desktop"
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

echo "    Hide icons for Connected servers on the desktop"
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false

echo "    New Finder windows show Home directory"
# User's Mac
#   NewWindowTarget: PfCm
# Macintosh HD - Data
#   NewWindowTarget: PfVo
#   NewWindowTargetPath: file:///
# Desktop:
#   NewWindowTarget: PfDe
#   NewWindowTargetPath: file:///Users/$(whoami)/Desktop/
# Documents:
#   NewWindowTarget: PfDo
#   NewWindowTargetPath: file:///Users/$(whoami)/Documents/
# iCloud Drive:
#   NewWindowTarget: PfID
#   NewWindowTargetPath: file:///Users/$(whoami)/Library/Mobile%20Documents/com~apple~CloudDocs/
# Recents:
#   NewWindowTarget: PfAF
#   NewWindowTargetPath: file:///System/Library/CoreServices/Finder.app/Contents/Resources/MyLibraries/myDocuments.cannedSearch
# For other paths, use "PfLo" and "file:///full/path/here/"
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

echo "    Open folders in tabs instead of new windows"
defaults write com.apple.finder FinderSpawnTab -bool true

echo "  Finder -> Sidebar"
echo "    Install tool to manage Finder sidebar: mysides"
brew cask install mysides

echo "    Remove Desktop from sidebar"
mysides remove Desktop

echo "    Remove Recents from sidebar"
mysides remove Recents

echo "    Add Home directory to sidebar"
mysides add $(whoami) file:///Users/$(whoami)

echo "    Add ~/Document/Code to sidebar"
mysides add Code file:///Users/$(whoami)/Documents/Code

echo "    Add ~/Document/Book to sidebar"
mysides add Code file:///Users/$(whoami)/Documents/Book

echo "    Add ~/Document/Score to sidebar"
mysides add Code file:///Users/$(whoami)/Documents/Score

echo "    Remove Recent Tags from sidebar"
osascript finder-sidebar.scpt

echo "  Finder -> Advanced"
echo "    Show all file name extensions"
defaults write -g AppleShowAllExtensions -bool true

echo "    Disable warning before changing an extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "    Disable warning before removing from iCloud Drive" 
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false

echo "    Disable warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo "    Enable remove items from the Trash after 30 days"
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

echo "    Keep folders on top in windows when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirst -bool true

echo "    Keep folders on top on Desktop when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true

echo "    When performing a search, Search the Current Folder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"


echo "  Finder -> Hidden Features"
echo "    Enable spring loading for directories"
# What is spring loading: https://www.youtube.com/watch?v=F9kdAxGe9SE
defaults write -g com.apple.springing.enabled -bool true

echo "    Remove the spring loading delay for directories"
defaults write -g com.apple.springing.delay -float 0

echo "    Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

echo "    Enable sort by kind for icons on the desktop and in other icon views"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist

echo "    Set Finder font size to 14"
/usr/libexec/PlistBuddy -c "Set :StandardViewOptions:ColumnViewOptions:FontSize 14" ~/Library/Preferences/com.apple.finder.plist

echo "    Expand File Info panes: General, Open with, and Sharing & Permissions"
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true
