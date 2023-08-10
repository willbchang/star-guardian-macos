# UI

Use column view in all Finder windows by default

| Features        | Values | Shortcuts   |
|-----------------|--------|-------------|
| Icon View       | icnv   | Command + 1 |
| List View       | Nlsv   | Command + 2 |
| Column View     | clmv   | Command + 3 |
| Cover Flow View | Flwv   | Command + 4 |

```bash
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
```

Remove toolbar icon

```bash
/usr/libexec/PlistBuddy -c "Delete :NSToolbar\ Configuration\ Browser:TB\ Item\ Identifiers" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Add :NSToolbar\ Configuration\ Browser:TB\ Item\ Identifiers array" ~/Library/Preferences/com.apple.finder.plist
```

# Home Directory

Create symlinks from Documents

```bash
ln -s ~/Documents/Code ~/Code
ln -s ~/Documents/Book ~/Book
ln -s ~/Documents/Score ~/Score
```

Hide unused home directory: Applications, Movies, Music, Public,
Pictures

```bash
chflags hidden ~/Applications ~/Movies ~/Music ~/Public ~/Pictures
```

Unhide \~/Library

```bash
xattr -d com.apple.FinderInfo  ~/Library 2> /dev/null
chflags nohidden ~/Library
```

Show frequent visited home files and directories: .config, .doom.d,
Library, .zshrc
This does't work for now.

```bash
# chflags nohidden ~/.config ~/.doom.d ~/Library ~/.zshrc
```

# General

Hide icons for Hard disks on the desktop

```bash
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
```

Show icons for External disks on the desktop

```bash
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
```

Hide icons for CDs, DVDs on the desktop

```bash
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
```

Hide icons for Connected servers on the desktop

```bash
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
```

New Finder windows show Home directory

 | Position            | NewWindowTarget | NewWindowTargetPath                                                                                      |
 |---------------------|-----------------|----------------------------------------------------------------------------------------------------------|
 | User\'s Macintosh   | PfCm            | \-                                                                                                       |
 | Macintosh HD - Data | PfVo            | <file:///>                                                                                               | 
 | Home                | PfHm            | <file://$%7BHOME%7D/>                                                                                    |
 | Desktop             | PfDe            | <file:///Users/$(whoami)/Desktop/>                                                                       |
 | Documents           | PfDo            | <file:///Users/$(whoami)/Documents/>                                                                     |
 | iCloud Drive        | PfID            | <file:///Users/$(whoami)/Library/Mobile%20Documents/com~apple~CloudDocs/>                                |
 | Recents             | PfAF            | <file:///System/Library/CoreServices/Finder.app/Contents/Resources/MyLibraries/myDocuments.cannedSearch> |
 | Others              | PfLo            | <file:///full/path/here/>                                                                                |

```bash
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
```

Open folders in tabs instead of new windows

```bash
defaults write com.apple.finder FinderSpawnTab -bool true
```

# Sidebar

Install tool to manage Finder sidebar: mysides

```bash
brew cask install mysides
```

Remove Desktop from sidebar

```bash
mysides remove Desktop
```

Remove Recents from sidebar

```bash
mysides remove Recents
```

Add Home directory to sidebar

```bash
mysides add $(whoami) file:///Users/$(whoami)
```

Add \~/Document/Code to sidebar

```bash
mysides add Code file:///Users/$(whoami)/Documents/Code
```

Add \~/Document/Book to sidebar

```bash
mysides add Code file:///Users/$(whoami)/Documents/Book
```

Add \~/Document/Score to sidebar

```bash
mysides add Code file:///Users/$(whoami)/Documents/Score
```

Remove Recent Tags from sidebar

```bash
defaults write com.apple.finder ShowRecentTags -bool false
```

# Advanced

Show all file name extensions

```bash
defaults write -g AppleShowAllExtensions -bool true
```

Disable warning before changing an extension

```bash
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
```

Disable warning before removing from iCloud Drive

```bash
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false
```

Disable warning before emptying the Trash

```bash
defaults write com.apple.finder WarnOnEmptyTrash -bool false
```

Enable remove items from the Trash after 30 days

```bash
defaults write com.apple.finder FXRemoveOldTrashItems -bool true
```

Keep folders on top in windows when sorting by name

```bash
defaults write com.apple.finder _FXSortFoldersFirst -bool true
```

Keep folders on top on Desktop when sorting by name

```bash
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true
```

When performing a search, Search the Current Folder

```bash
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
```

# Hidden Features

Disable Finder Sound

```bash
defaults write com.apple.finder FinderSounds -int 0
```

\*Enable spring loading for directories\*\
What is spring loading: <https://www.youtube.com/watch?v=F9kdAxGe9SE>

```bash
defaults write -g com.apple.springing.enabled -bool true
```

Remove the spring loading delay for directories

```bash
defaults write -g com.apple.springing.delay -float 0
```

Disable disk image verification

```bash
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
```

Enable sort by kind for icons on the desktop and in other icon views

```bash
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist
```

Set Finder font size to 14

```bash
/usr/libexec/PlistBuddy -c "Set :StandardViewOptions:ColumnViewOptions:FontSize 14" ~/Library/Preferences/com.apple.finder.plist
```

Expand File Info panes: General, Open with, and Sharing &
Permissions

```bash
defaults write com.apple.finder FXInfoPanesExpanded -dict \
Show Actions with ~fn~ key to action selected item
    General -bool true \
    OpenWith -bool true \
    Privileges -bool true
```
