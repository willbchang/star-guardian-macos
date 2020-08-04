# Enable Option + Esc to speak selected text.
defaults write com.apple.speech.synthesis.general.prefs SpokenUIUseSpeakingHotKeyFlag -bool true

# Set Samantha to the default speaker.
defaults write com.apple.speech.voice.prefs SelectedVoiceCreator -int 1886745202
defaults write com.apple.speech.voice.prefs SelectedVoiceID -int 184844483
defaults write com.apple.speech.voice.prefs SelectedVoiceName -string "Samantha"

# Enable three finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad DragLock -bool false
