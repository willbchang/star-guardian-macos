# Git
[Git](https://git-scm.com/) is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.//
Git comes with CommandLineTools.

By default, git will print non-ASCII file names in quoted octal notation, i.e. "\nnn\nnn&#x2026;". This can be disabled with:

```bash
git config --global core.quotepath off
```

**Setup global [git ignore](https://docs.github.com/en/free-pro-team@latest/github/using-git/ignoring-files)**  
Configuring ignored files for all repositories on your computer. [github/gitignore](https://github.com/github/gitignore)

```bash
cat command-line-tools/.gitignore_global >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

