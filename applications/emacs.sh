echo 'Install latest emacs-plus and dependencies for doom emacs'
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew install ripgrep

echo '  Install doom emacs'
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
