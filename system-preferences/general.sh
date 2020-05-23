# Set appearance to auto
# https://apple.stackexchange.com/a/391814/306411
defaults write -g AppleInterfaceStyleSwitchesAutomatically -bool true

# Set accent color to Pink
# Accent Color
# Red           : 0
# Orange        : 1
# Yellow        : 2
# Green         : 3
# Blue          : 4
# Purple        : 5
# Pink          : 6
# Logan         : 7
# Paris Daisy   : 8
# Coral         : 9
# Silver        : 10
defaults write -g AppleAccentColor 6

# Set highlight color to Pink
# Highlight color
# Red      : "1.000000 0.733333 0.721569"
# Orange   : "1.000000 0.874510 0.701961"
# Yellow   : "1.000000 0.937255 0.690196"
# Green    : "0.752941 0.964706 0.678431"
# Blue     : "0.847059 0.847059 0.862745" (default)
# Purple   : "0.968627 0.831373 1.000000"
# Pink     : "1.000000 0.749020 0.823529
# Brown    : "0.929412 0.870588 0.792157"
# Graphite : "0.847059 0.847059 0.862745"
# Silver   : "0.776500 0.776500 0.776500" (custom)
# Above data is from :https://github.com/buo/dotfiles/blob/master/osx/_01general.sh
# Calculate on your own: https://apple.stackexchange.com/a/164905/306411
defaults write -g AppleHighlightColor -string "1.000000 0.749020 0.823529"

# Set sidebar icon size to medium
# Small  : 1
# Medium : 2 (default)
# Large  : 3
defaults write -g NSTableViewDefaultSizeMode -int 2
