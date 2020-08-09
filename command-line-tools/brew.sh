echo 'Install package manager: Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'Install runtime environments: Ruby, NodeJS'
brew install ruby node

echo 'Install OCR tool: tesseract' 
brew install tesseract

# This moves to ../applications/emacs.sh
# echo 'Install emacs-plus27 and dependencies for doom emacs'
# brew install emacs-plus@27
# brew install ripgrep

echo 'Install softwares: Alfred, Google Chrome, IntelliJ IDEA'
brew cask install alfred
brew cask install google-chrome
brew cask install intellij-idea

echo 'Install font: Inconsolata"
brew tap homebrew/cask-fonts
brew cask install font-inconsolata
