# Zsh

## Oh My Zsh
[Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) is a delightful community-driven framework for managing your zsh configuration.

``` bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Use the default theme. Don't speeding time on choosing a theme.

    ZSH_THEME='robbyrussell'

Disable auto update. Sometimes the update prompt is annoying because it breaks the command you run when launching the Terminal.

    DISABLE_AUTO_UPDATE="true"

## Alias
Alias git diff as diff for rich color and styles.

    alias diff="git diff --no-index"

## Exports
Make non-ASCII characters display right.

    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8

## Functions

## Plugins
Oh My Zsh plugins allow you to add functionality of many sorts to your shell just by enabling them. [Plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

Enable zsh plugins:

    plugins=(
      git
      zsh-autosuggestions
      zsh-syntax-highlighting
    )

## Zsh Autosuggestions
 [Zsh Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): It suggests commands as you type based on history and completions.
``` bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Speeds up pasting with autosuggestions. [Issue 238](https://github.com/zsh-users/zsh-autosuggestions/issues/238)

    pasteinit() {
      OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
      zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
    }
    
    pastefinish() {
      zle -N self-insert $OLD_SELF_INSERT
    }
    zstyle :bracketed-paste-magic paste-init pasteinit
    zstyle :bracketed-paste-magic paste-finish pastefinish

Clear suggestion after pasting. [Issue 351](https://github.com/zsh-users/zsh-autosuggestions/issues/351)

    ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste)

## Zsh Syntax Highlighting
 [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): This package provides syntax highlighting for the shell zsh. It enables highlighting of commands whilst they are typed at a zsh prompt into an interactive terminal. This helps in reviewing commands before running them, particularly in catching syntax errors.

``` bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

