curl -o ./Blurred\ Monokai\ Theme.terminal -k https://raw.githubusercontent.com/willbchang/terminal-blurred-monokai-theme/master/Blurred%20Monokai%20Theme.terminal

open Blurred\ Monokai\ Theme.terminal
rm -rf Blurred\ Monokai\ Theme.terminal

defaults write com.apple.Terminal "Default Window Settings" -string "Blurred Monokai Theme"
defaults write com.apple.Terminal "Startup Window Settings" -string "Blurred Monokai Theme"
