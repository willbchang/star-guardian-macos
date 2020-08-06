echo 'Disable automatic capitalization'
defaults write -g NSAutomaticCapitalizationEnabled -bool false

echo 'Disable smart dashes'
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

echo 'Disable automatic period substitution'
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false

echo 'Disable smart quotes'
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false

echo 'Disable auto-correct'
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

echo 'Enable full keyboard access for all controls'
# (e.g. enable Tab in modal dialogs)
defaults write -g AppleKeyboardUIMode -int 3

echo 'Disable press-and-hold for keys in favor of key repeat'
defaults write -g ApplePressAndHoldEnabled -bool false

echo 'Set a blazingly fast keyboard repeat rate'
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

echo 'Set touchbar(control strip)'
defaults write com.apple.controlstrip FullCustomized '(
    "com.apple.system.brightness",
    "com.apple.system.night-shift",
    NSTouchBarItemIdentifierFlexibleSpace,
    "com.apple.system.volume",
    "com.apple.system.mute",
    NSTouchBarItemIdentifierFlexibleSpace,
    "com.apple.system.group.media",
    NSTouchBarItemIdentifierFlexibleSpace,
    "com.apple.system.screen-lock",
    "com.apple.system.notification-center"
)'

echo 'Expaned control strip by default'
defaults write com.apple.touchbar.agent PresentationModeGlobal -string "fullControlStrip"

echo 'Disable "Select the previous input source"'
/usr/libexec/PlistBuddy -c "set :AppleSymbolicHotKeys:60:enabled false" ~/Library/Preferences/com.apple.symbolichotkeys.plist
