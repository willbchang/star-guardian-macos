<h1 align="center">
    Star Guardian MacOS
    <br>
    <br>
    <img width="200" alt="Star Guardian Logo" src="https://user-images.githubusercontent.com/14329786/110730526-8f22f600-825b-11eb-8eda-aa061caaa510.png">
    <br>
    <img width="200" alt="Star Guardian Text" src="https://user-images.githubusercontent.com/14329786/110730595-aa8e0100-825b-11eb-8fcf-8c2071f402ef.png">
</h1>

<div align="center">
    <sub>A minimal and productive macOS configuration with a good documentation that you can live with for a long time.</sub>   
</div>

## Installation

*NOTICE: This project is on building, use it as your own risk.*

Please read the following notes through before running the install script.

1. The install script is likely not working for now.
2. Currently there is not backup script, it may break or mess up your computer.
3. Some of the configurations are not stable/done yet.

```bash
git clone --depth=1 https://github.com/willbchang/star-guardian-macos.git
sh star-guardian-macos/install.sh
```

**Table of Contents**

| System Preferences                            | Command Line Tools                                       | Applications                                       |
|-----------------------------------------------|----------------------------------------------------------|:---------------------------------------------------|
| Sound                                         | [Brew](./command-line-tools/brew.md) (Package Manager)   | [Alfred](./applications/alfred.org) (Productivity) |
| [General](./system-preferences/general.org)   | [Oh My Zsh](./command-line-tools/zsh.md) (Zsh framework) | [Chrome](./applications/chrome.md) (Browser)       |
| Appearance                                    | [Git](./command-line-tools/git.md) (Version Control)     | [IntelliJ IDEA](./applications/idea.md) (IDE)      |
| Control Center                                | [Node](./command-line-tools/node.md) (JS Runtime)        | Visual Studio Code(Text Editor)                    |
| [Siri](./system-preferences/siri.org)         | [Trash](./command-line-tools/trash.md) (Safe remove)     | Fig (Terminal Autocomplete)                        |
| Privacy & Security                            | [Duti](./command-line-tools/duti.md) (Set default app)   | Glance (Preview Plain Files)                       |
| Desktop & Dock                                | Vim (Text Editor)                                        | Karabiner-Elements (Custom Keybinding)             |
| Lock Screen                                   | jq (JSON processor)                                      | Shottr (Screenshot)                                |
| [Keyboard](./system-preferences/keyboard.org) | fd (find alternative)                                    | Anki (Memory Cards)                                |
|                                               | ripgrep (grep alternative)                               | [Terminal](./applications/terminal.org)            |
|                                               | pandoc (markup converter)                                | [Finder](./applications/finder.org)                |
|                                               |                                                          |                                                    |

## LICENSE

[AGPL-3.0](LICENSE)
