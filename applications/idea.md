# IntelliJ IDEA

[Intellij IDEA](https://www.jetbrains.com/idea/) is the IDE that makes development a more productive and enjoyable experience.

```bash
brew install --cask intellij-idea
```

## UI

## Plugins
To install all the plugins:

```bash
open -na "IntelliJ IDEA.app" --args installPlugins com.github.copilot izhangzhihao.rainbow.brackets org.OverEngineer.InlineProblems IdeaVIM AceJump com.joshestein.ideavim-quickscope IdeaVimExtension 
```


### Coding Experience

[GitHub Copilot](https://plugins.jetbrains.com/plugin/17718-github-copilot) provides **autocomplete-style suggestions** from an AI pair programmer as you code. You can receive suggestions from GitHub Copilot either by starting to write the code you want to use, or by writing a natural language comment describing what you want the code to do.

    open -na "IntelliJ IDEA.app" --args installPlugins com.github.copilot

[Rainbow Brackets](https://plugins.jetbrains.com/plugin/10080-rainbow-brackets) can rainbowify various types **bracket**, **variables** and **indent guidelines**.

    open -na "IntelliJ IDEA.app" --args installPlugins izhangzhihao.rainbow.brackets

[InlineProblems](https://plugins.jetbrains.com/plugin/20789-inlineproblems) shows problems like errors and warnings inside inline.

    open -na "IntelliJ IDEA.app" --args installPlugins org.OverEngineer.InlineProblems



### Vim

[IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim) supports many Vim features including normal/insert/visual modes, motion keys, deletion/changing, marks, registers, some Ex commands, Vim regexps, configuration via ~/.ideavimrc, macros, Vim plugins, etc.

    open -na "IntelliJ IDEA.app" --args installPlugins IdeaVIM

[AceJump](https://plugins.jetbrains.com/plugin/7086-acejump) allows you to quickly navigate the caret to any position visible in the editor. See a demo of AceJump in action! Simply hit <kbd>ctrl</kbd> + <kbd>;</kbd>, type a character, then type the matching character to Ace Jump.

    open -na "IntelliJ IDEA.app" --args installPlugins AceJump

[IdeaVim-Quickscope](https://plugins.jetbrains.com/plugin/19417-ideavim-quickscope) allows for easy forward/backward navigation on a line. In general, using f, F, t and T is much quicker than spamming h/j/k/l or w/b. Quickscope makes this even easier, by highlighting unique characters in each word when using f/F/t/T.

    open -na "IntelliJ IDEA.app" --args installPlugins com.joshestein.ideavim-quickscope

[IdeaVimExtension](https://plugins.jetbrains.com/plugin/9615-ideavimextension)  is an extension of 'IdeaVim' , can switch to English input method in normal mode and restore input method in insert mode.

    open -na "IntelliJ IDEA.app" --args installPlugins IdeaVimExtension

## Keybindings

## Command Line Tool
To use `idea` from the command line, add the following to your `.zshrc`:

    export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"
