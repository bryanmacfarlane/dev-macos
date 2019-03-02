# Mac OS Dev Env

My personal dev env for Mac OS

## Clone

From user root (~)
```bash
$ cd ~
$ git clone https://github.com/bryanmacfarlane/dev-macos 
```

## Setup Terminal

Setup the terminal for a transparent look and feel with a startup script to setup the environment

[setup terminal](terminal.md)

## Workspaces

The scripts setup three workspaces

### ~/Projects

Projects are contained here.  Type `proj` to jump here.

### ~/Study

Study material is contained here.  Type `study` to jump here and setup the environment.

Motivation was to not have ~/Projects littered with a ton of small study projects.

### ~/.bashrc

Add alias to bashrc.  This is useful if you're using from outside standard terminal.  For example, in an editor terminal window.

```bash
alias godev="source ~/dev-macos/devenv.sh"
```

## Go

Details on setting up go tools for Projects, Study and tools such as VS Code and GoLand.

[go environment](go.md)