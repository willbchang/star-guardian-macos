echo "Applications -> Emacs"
echo "  Install emacs-plus "
brew tap d12frosted/emacs-plus
brew install emacs-plus

echo "  Install doom emacs dependency: ripgrep"
brew install ripgrep

echo "  Install doom emacs"
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

echo " Setup doom emacs for macos"
curl -LOSs https://raw.githubusercontent.com/willbchang/macos-emacs-doom.d/master/README.org
mv README.org ~/.doom.d/README.org
echo "(org-babel-load-file \"~/.doom.d/README.org\")" >> ~/.doom.d/config.el
