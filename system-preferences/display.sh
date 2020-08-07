# Enable Night Shift
# FIXME: Should select "Night Shift" after open System Preferences -> Display
osascript -e 'tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.displays"
	delay 0.3
	tell application "System Events"
		tell process "System Preferences"
			tell pop up button 1 of tab group 1 of window 1
				click
				delay 0.2
				click menu item "Sunset to Sunrise" of menu 1
			end tell
		end tell
	end tell
end tell
tell application "System Preferences" to quit'
