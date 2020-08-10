alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias p='pnpm'
alias pi='pnpm i'

export http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087
export ZSH='/Users/Will/.oh-my-zsh'
export EDITOR='code'
export PATH="/usr/local/opt/ruby/bin:$PATH"
ZSH_THEME='robbyrussell'
DISABLE_AUTO_TITLE='true'
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

for i (~/.config/function-*) . $i

function release_chrome_read_later () {
    mkdir ~/Desktop/chrome-read-later/
    cd ~/Code/chrome-read-later
    cp -R assets feat* modules* manifest.json  ~/Desktop/chrome-read-later/
    trash ~/Desktop/chrome-read-later/assets/images
    # cd ~/Desktop
    # zip chrome-read-later chrome-read-later
    # trash ~/Desktop/chrome-read-later
}

function serve {
  port="${1:-3000}"
  open "http://localhost:$port"
  ruby -run -e httpd . -p $port
}
