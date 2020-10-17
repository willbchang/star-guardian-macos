alfred_preferences_path=$(ruby "./applications/alfred_preferences_path.rb")
alfred_preferences_path="$(eval echo $alfred_preferences_path)" # Strip ""

default_results="${alfred_preferences_path}/preferences/features/defaultresults/prefs.plist"
file_search_path="${alfred_preferences_path}/preferences/features/filesearch"
actions="${alfred_preferences_path}/preferences/features/actions/prefs.plist"

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
