# Enable Option + Esc to speak selected text.
defaults write com.apple.speech.synthesis.general.prefs SpokenUIUseSpeakingHotKeyFlag -bool true

# Set Samantha to the default speaker.
defaults write com.apple.speech.voice.prefs SelectedVoiceCreator -int 1886745202
defaults write com.apple.speech.voice.prefs SelectedVoiceID -int 184844483
defaults write com.apple.speech.voice.prefs SelectedVoiceName -string "Samantha"
