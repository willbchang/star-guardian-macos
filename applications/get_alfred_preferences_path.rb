require "json"

user = `whoami`.strip
file = File.open "/Users/#{user}/Library/Application Support/Alfred/prefs.json"
data = JSON.load file

p data["current"]
