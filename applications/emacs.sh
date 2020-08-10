echo 'Install emacs-plus27 and dependencies for doom emacs'
brew install emacs-plus@27
brew install ripgrep

echo 'Install doom emacs'
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
