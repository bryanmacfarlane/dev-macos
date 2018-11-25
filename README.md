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

Environments will be setup such as go setting `GOPATH` properly.

### ~/Study

Study material is contained here.  Type `study` to jump here and setup the environment.

Environments will be setup such as go setting `GOPATH` properly (~/Study/go)

Motivation was to not have ~/Projects littered with a ton of small study projects.

### ~/Tools

Tools are contained here in the bin directory.  Type `tools` to jump here.

As an example all the go tools will be installed in ~/Tools/bin which both projects and study will use.

## Go

Details on setting up go tools for Projects, Study and tools such as VS Code and GoLand.

[go environment](go.md)