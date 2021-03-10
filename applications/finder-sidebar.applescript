tell application "Finder" to activate
tell application "System Events" to tell process "Finder"
	tell menu bar 1 to click menu item "Preferences…" of menu "Finder"
	click button "Sidebar" of toolbar 1 of window "Finder Preferences"
	
	set recentTags to checkbox "Recent Tags" of window "Finder Preferences"
	tell recentTags
		set recentTagsStatus to value of recentTags as boolean
		if recentTagsStatus is true then click recentTags
	end tell
end tell