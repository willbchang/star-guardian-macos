echo 'Applications -> Emacs'
echo '  Install emacs-plus '
brew tap d12frosted/emacs-plus
brew install emacs-plus

echo '  Install doom emacs dependency: ripgrep'
brew install ripgrep

echo '  Install doom emacs'
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
