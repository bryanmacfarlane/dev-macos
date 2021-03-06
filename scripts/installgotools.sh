#!/usr/bin/env bash

set -e

# https://github.com/Microsoft/vscode-go/wiki/Go-tools-that-the-Go-extension-depends-on

echo "Installing gopls (auto completion) module support ..."
go get -u golang.org/x/tools/cmd/gopls

echo "Installing gocode-gomod (auto completion) module support ..."
go get -u github.com/stamblerre/gocode

echo "Installing gooutline (symbol search current file) ..."
go get -u github.com/ramya-rao-a/go-outline

echo "Installing gosymbols (symbol search in current workspace)..."
go get -u github.com/newhook/go-symbols

echo "Installing gopkgs (autocompletion of unimported packages)..."
go get -u github.com/uudashr/gopkgs/cmd/gopkgs

echo "Installing guru (find references) ..."
go get -u golang.org/x/tools/cmd/guru

echo "Installing gorename (renaming of symbols) ..."
go get -u golang.org/x/tools/cmd/gorename

echo "Installing godoc ..."
go get -u golang.org/x/tools/godoc

echo "Installing golint ..."
go get -u golang.org/x/lint/golint

echo "Installing godef (go to definition) ..."
go get -u github.com/rogpeppe/godef

echo "Installing godef-gomod (go to definition) module support ..."
go get -u github.com/ianthehat/godef

echo "Installing debugger (dlv) ..."
go get -u github.com/derekparker/delve/cmd/dlv

echo "Installing goreturns (formatting) ..."
go get -u github.com/sqs/goreturns

# echo "Installing go dep package manager ..."
# go get -u github.com/golang/dep/cmd/dep

# echo "Installing go vgo package manager ..."
# go get -u golang.org/x/vgo
