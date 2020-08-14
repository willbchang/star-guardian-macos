echo "Install Alfred from brew"
brew cask install alfred

get_latest_release_download_url() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" |# Get latest release from GitHub api
    grep '"browser_download_url":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

get_latest_release_file_name() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

import_alfred_workflow() {
    osascript -e 'tell application "Alfred Preferences"
    activate
    tell application "System Events" to key code 36 #return
end tell'

}

install_alfred_workflow() {
  curl -LoSs $(get_latest_release $1)
  name=$(get_latest_release_file_name $1)
  open $name.alfredworkflow
  import_alfred_workflow
  trash $name.alfredworkflow
}

echo "  Install Alfred Workflow: Open in Editor"
install_alfred_workflow "willbchang/alfred-open-in-editor"

echo "  Install Alfred Workflow: Run in Terminal"
install_alfred_workflow "willbchang/alfred-run-in-terminal"

echo "  Install Alfred Workflow: Search Selection"
install_alfred_workflow "willbchang/alfred-search-selection"

echo "  Install Alfred Workflow: GitHub"
install_alfred_workflow "gharlan/alfred-github-workflow"

echo "  Install Alfred Workflow: OCR Screencapture"
curl -LOSs https://raw.githubusercontent.com/BlackwinMin/alfred-gallery/master/OCR%20Screencapture/OCR%20Screencapture.alfredworkflow
echo "    Install Dependency: tesseract"
brew install tesseract
open OCR%20Screencapture.alfredworkflow
import_alfred_workflow
trash OCR%20Screencapture.alfredworkflow
