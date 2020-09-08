awk '/\#\+begin_src\ sh/{flag=1; next} /\#\+end_src/{flag=0} flag' README.org >config.sh
sh config.sh

# echo "Setup # System Preferences"
# sh system-preferences/general.sh
# sh system-preferences/dock.sh
# sh system-preferences/accessibility.sh
# sh system-preferences/security+privacy.sh
# sh system-preferences/keyboard.sh
# sh system-preferences/trackpad.sh
# sh system-preferences/display.sh
# sh system-preferences/battery.sh

# echo "Install and setup Command Line Tools"
# sh command-line-tools/brew.sh
# sh command-line-tools/oh-my-zsh.sh
# sh command-line-tools/git.sh

# echo "Install and setup applications"
# sh applications/emacs.sh
# sh applicatio ns/terminal.sh
