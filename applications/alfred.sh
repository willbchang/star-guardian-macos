echo "Install Alfred from brew"
brew cask install alfred

alfred_preferences_path=$(ruby get_alfred_preferences_path.rb)
alfred_preferences_path="${alfred_preferences_path:1:-1}" # Strip ""
echo "  Your alfred preferences path is ${alfred_preferences_path}"

echo "  Alfred -> Features: Default Results"
default_results="${alfred_preferences_path}/preferences/features/defaultresults/prefs.plist"

echo "    Show System Preferences in Default Results"
defaults write $default_results showPreferences -bool true

echo "    Hide Contacts in Default Results"
defaults write $default_results showContacts -bool false

echo "    Hide Folders in Default Results"
defaults write $default_results showFolders -bool false

echo "    Hide Documents in Default Results"
defaults write $default_results showDocuments -bool false

echo "    Hide Text Files in Default Results"
defaults write $default_results showTextFiles -bool false

echo "    Hide Images in Default Results"
defaults write $default_results showImages -bool false

echo "    Hide Archives in Default Results"
defaults write $default_results showArchives -bool false

echo "    Hide Apple Scripts in Default Results"
defaults write $default_results showAppleScripts -bool false

echo "    Disable Search all file types"
defaults write $default_results showAll -bool false




echo "  Alfred -> Features: File Search"
file_search_path="${alfred_preferences_path}/preferences/features/filesearch"

echo "    Enable Quick Search"
defaults write "${file_search_path}/prefs.plist" quickSearch -bool true

echo "    Disable 'open' keyword for Opening Files"
defaults write "${file_search_path}/open/prefs.plist" enabled -bool false

echo "    Enable 'find' keyword for Revealing Files(open in Finder)"
defaults write "${file_search_path}/find/prefs.plist" enabled -bool true

echo "    Enable 'in' keyword for seaching content in files"
defaults write "${file_search_path}/in/prefs.plist" enabled -bool true

echo "    Disable 'tags' keyword for seaching File Tags"
defaults write "${file_search_path}/tag/prefs.plist" enabled -bool false

echo "    Ignore Email in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreEmail -bool true

echo "    Ignore Bookmarks in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreBookmarks -bool true

echo "    Show Music files in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreMusic -bool false

echo "    Show Source files in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreSource -bool false

echo "    Hide Contacts in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreContacts -bool true

echo "    Hide History in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreHistory -bool true

echo "    Show Images in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreImages -bool false

echo "    Hide Calendar in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreCalendar -bool true

echo "    Hide Messages in File Search"
defaults write "${file_search_path}/prefs.plist" ignoreMessages -bool true

echo "    Show Plist files in File Search"
defaults write "${file_search_path}/prefs.plist" ignorePlist -bool false

echo "    Set Result Limit to 20"
defaults write "${file_search_path}/prefs.plist" limit -int 0

echo "  Alfred -> Workflows"
get_latest_release_download_url() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" |
    grep '"browser_download_url":' |
    sed -E 's/.*"([^"]+)".*/\1/'
}

get_latest_release_file_name() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" |
    grep '"name":' |
    sed -E 's/.*"([^"]+)".*/\1/'
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

echo "    Install Alfred Workflow: Open in Editor"
install_alfred_workflow "willbchang/alfred-open-in-editor"

echo "    Install Alfred Workflow: Run in Terminal"
install_alfred_workflow "willbchang/alfred-run-in-terminal"

echo "    Install Alfred Workflow: Search Selection"
install_alfred_workflow "willbchang/alfred-search-selection"

echo "    Install Alfred Workflow: GitHub"
install_alfred_workflow "gharlan/alfred-github-workflow"

echo "    Install Alfred Workflow: OCR Screencapture"
curl -LOSs https://raw.githubusercontent.com/BlackwinMin/alfred-gallery/master/OCR%20Screencapture/OCR%20Screencapture.alfredworkflow
echo "    Install OCR Screencapture Dependency: tesseract"
brew install tesseract
open OCR%20Screencapture.alfredworkflow
import_alfred_workflow
trash OCR%20Screencapture.alfredworkflow
