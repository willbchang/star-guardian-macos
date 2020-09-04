path="$(pwd)/applications/get_alfred_preferences_path.rb"
alfred_preferences_path=$(ruby $path)

alfred_preferences_path="${alfred_preferences_path:1:-1}" # Strip ""
default_results="${alfred_preferences_path}/preferences/features/defaultresults/prefs.plist"
file_search_path="${alfred_preferences_path}/preferences/features/filesearch"
