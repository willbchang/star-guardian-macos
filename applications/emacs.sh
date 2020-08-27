echo "Application -> Text Editor: Emacs"
echo "  Install emacs-plus "
brew tap d12frosted/emacs-plus
brew install emacs-plus

echo "  Make an Emacs.app alias to /Applications"
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications

echo "  Install doom emacs dependency: ripgrep"
brew install ripgrep

echo "  Install doom emacs"
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

echo "  Setup doom emacs for macos"
curl -Sso ~/.doom.d/README.org https://raw.githubusercontent.com/willbchang/macos-emacs-doom.d/master/README.org
echo "(org-babel-load-file \"~/.doom.d/README.org\")" >>~/.doom.d/config.el

echo "  Install vterm dependency: cmake"
brew install cmake

echo "  Install shell mode dependency: shfmt"
brew install shfmt

echo "  Rebuild doom emacs packages"
~/.emacs.d/bin/doom sync && ~/.emacs.d/bin/doom build
