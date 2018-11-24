# Mac OS Dev Env

My personal dev env for Mac OS

## Clone

From user root (~)
```bash
$ cd ~
$ git clone https://github.com/bryanmacfarlane/dev-macos 
```

## Setup Terminal

Terminal, Preferences ...

Pro, make default
Courier New 14 pt, Opacity 85%, Blur 7%
In Shell tab: (this is the key that took me forever to figure out --rcfile)
Run Command: /bin/bash --rcfile ~/dev-macos/devenv.sh

![prefs](res/terminalprefs.png)

open a new terminal and test it out

```bash
[dev] ~/Projects$ study
[dev] ~/Study$ tools
[dev] ~/Tools$ proj
[dev] ~/Projects$ aliases
```

# Language Specific Setup

[go tools an env](go.md)