echo "Install Alfred from brew"
brew cask install alfred

get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"browser_download_url":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

import_alfred_workflow() {
    osascript -e 'tell application "Alfred Preferences"
    activate
    tell application "System Events" to key code 36 #return
end tell'

}

echo "  Install Alfred Workflow: Open in Editor"
curl -LOSs $(get_latest_release "willbchang/alfred-open-in-editor")
open Open-in-Editor.alfredworkflow
import_alfred_workflow
trash Open-in-Editor.alfredworkflow

echo "  Install Alfred Workflow: Run in Terminal"
curl -LOSs $(get_latest_release "willbchang/alfred-run-in-terminal")
open Run-in-Terminal.alfredworkflow
import_alfred_workflow
trash Run-in-Terminal.alfredworkflow

echo "  Install Alfred Workflow: Search Selection"
curl -LOSs $(get_latest_release "willbchang/alfred-search-selection")
open Search-Selection.alfredworkflow
import_alfred_workflow
trash Search-Selection.alfredworkflow

echo "  Install Alfred Workflow: GitHub"
curl -LOSs $(get_latest_release "gharlan/alfred-github-workflow")
open github.alfredworkflow
import_alfred_workflow
trash github.alfredworkflow

echo "  Install Alfred Workflow: OCR Screencapture"
curl -LOSs https://raw.githubusercontent.com/BlackwinMin/alfred-gallery/master/OCR%20Screencapture/OCR%20Screencapture.alfredworkflow
echo "  Install Dependency: tesseract"
brew install tesseract
open OCR%20Screencapture.alfredworkflow
import_alfred_workflow
trash OCR%20Screencapture.alfredworkflow
