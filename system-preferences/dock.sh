echo "Setup System Preferences -> Dock"

echo "  Set the icon size of Dock items to 72 pixels"
defaults write com.apple.dock tilesize -int 72

echo "  Enable magnification"
defaults write com.apple.dock magnification -bool true

echo "  Set magnification size to 100"
defaults write com.apple.dock largesize -int 100

echo "  Change dock position to left"
defaults write com.apple.dock orientation -string "left"

echo "  Change minimize/maximize window effect"
defaults write com.apple.dock mineffect -string "scale"

echo "  Minimize windows into their application’s icon"
defaults write com.apple.dock minimize-to-application -bool true

echo "  Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false

echo "  Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

#echo "  Remove the auto-hiding Dock delay"
#defaults write com.apple.dock autohide-delay -float 0

#echo "  Remove the animation when hiding/showing the Dock"
#defaults write com.apple.dock autohide-time-modifier -float 0

echo "  Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

echo "  Don’t show recent applications in Dock"
defaults write com.apple.dock show-recents -bool false

echo "  Show only open applications in the Dock"
defaults write com.apple.dock static-only -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

echo "  Remove all (default) app icons from the Dock"
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
defaults write com.apple.dock persistent-apps -array

echo "  Enable spring loading for all Dock items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

echo "  Enable highlight hover effect for the grid view of a stack (Dock)"
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Add a spacer to the left side of the Dock (where the applications are)
#defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}"
# Add a spacer to the right side of the Dock (where the Trash is)
#defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";
