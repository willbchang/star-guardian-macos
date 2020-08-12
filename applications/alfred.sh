echo "Install Alfred from brew"
brew cask install aflred

get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"browser_download_url":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

echo "  Install Alfred Workflow: Open in Editor"
curl -O -s $(get_latest_release "willbchang/alfred-open-in-editor")
