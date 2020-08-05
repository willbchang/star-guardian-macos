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
