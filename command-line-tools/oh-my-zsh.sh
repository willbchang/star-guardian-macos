echo 'Install Oh-My-Zsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '  Install Oh-My-Zsh plugin: Zsh Autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo '  Install Oh-My-Zsh plugin: Zsh Completions'
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
autoload -U compinit && compinit

echo '  Install Oh-My-Zsh plugin: Zsh Syntax Highlighting'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo '  Move Oh-My-Zsh configurations to home folder'
cp -R .zshrc ~/.zshrc

echo '  Reload Oh-My-Zsh configurations'
source ~/.zshrc

