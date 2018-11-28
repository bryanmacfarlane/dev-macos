#!/usr/bin/env bash

# Terminal Settings
# -----------------------------------------------------------
# Silver Aerogel, Courier New 15 pt, Opacity 85%, Blur 7%
# In Shell tab: (this is the key that took me forever to figure out --rcfile)
# Run Command: /bin/bash --rcfile ~/devosx/devenv.sh

#SCRIPT_NAME=`basename $0`
SCRIPT_DIR=`dirname ${BASH_SOURCE}`

# add /scripts for utility scripts
export PATH="$PATH:${SCRIPT_DIR}/scripts"

#---------------------------------------------
# Projects
#---------------------------------------------
export PROJ_ROOT=~/Projects
mkdir -p $PROJ_ROOT/src
mkdir -p $PROJ_ROOT/bin
export PATH="$PROJ_ROOT/bin:$PATH"
alias proj="pushd ${PROJ_ROOT} > /dev/null && export GOPATH=${PROJ_ROOT}"

#---------------------------------------------
# Study
#---------------------------------------------
export STUDY_ROOT=~/Study
mkdir -p $STUDY_ROOT/src
mkdir -p $STUDY_ROOT/bin
export PATH="$STUDY_ROOT/bin:$PATH"
alias study="pushd ${STUDY_ROOT} > /dev/null && export GOPATH=${STUDY_ROOT}/go"

#---------------------------------------------
# Tools
#---------------------------------------------
export TOOLS_ROOT=~/Tools
mkdir -p $TOOLS_ROOT/bin
export PATH="$TOOLS_ROOT/bin:$PATH"
alias tools="pushd ${TOOLS_ROOT} > /dev/null && export GOPATH=${TOOLS_ROOT}"

#---------------------------------------------
# Banner
#---------------------------------------------
clear

echo
echo -n -e "\033]0;Dev Environment\007"
echo Mac OS Dev Environment
echo Welcome ${USER}!
echo
echo Running ${BASH_SOURCE}
echo 


#---------------------------------------------
# Node
#---------------------------------------------
# nvm
export NVM_DIR="$HOME/.nvm"
if [ -d ${NVM_DIR} ]; then
	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

nodePath=`which node`
if [ -f ${nodePath} ]; then
	echo "node:`node --version`"
	alias n="node $@"
	alias nd="node --debug=5858 $@"
	alias ndb="node --debug-brk=5858 $@"
	alias ni="open http://localhost:8080/debug?port=5858 && node-inspector"	
fi

npmPath=`which npm`
if [ -f ${nodePath} ]; then
	echo "npm:`npm --version`"
fi

#---------------------------------------------
# GO
#---------------------------------------------
goPath=`which go`
if [ -f ${goPath} ]; then
	go version

	#default go path
	export GOPATH=~/Projects
fi

golandpath='/Applications/GoLand.app'
if [ -d ${golandpath} ]; then
	alias goland='open ${golandpath}'
fi

#---------------------------------------------
# Docker
#---------------------------------------------
dockerPath=`which docker`
if [ -f ${dockerPath} ]; then
	echo "docker: `docker version --format {{.Client.Version}}`"
fi

#---------------------------------------------
# Mongo
#---------------------------------------------
mongoPath=`which mongod`
if [ -f ${mongoPath} ]; then
	#echo "mongod: `mongod --version`"
	alias mongodb="ulimit -n 1024 && sudo mongod"
fi

#---------------------------------------------
# Editor
#---------------------------------------------
export EDIT_CMD="open -a TextWrangler $@"
alias edit=${EDIT_CMD}

# sublime - prefer over text wrangler
# export SUBLIME_PATH="/Applications/Sublime Text 2.app"
export SUBLIME_PATH="/Applications/Sublime Text.app"

if [ -d "${SUBLIME_PATH}" ]; then	 
	export SUBLIME_CMD="\"${SUBLIME_PATH}\"/Contents/SharedSupport/bin/subl"
	export EDIT_CMD="${SUBLIME_CMD} $@"
	export SUBLIME_VERSION=`/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl --version`
	echo "sublime: ${SUBLIME_VERSION}"
fi



export vsPath="/Applications/Visual Studio Code.app"
if [ -d "${vsPath}" ]; then
	export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	echo "VS Code: `code -v`"
fi

# mysql
export mysqlPath="/usr/local/mysql"
if [ -d ${mysqlPath} ]; then
	export PATH=$PATH:/usr/local/mysql/bin
fi

#---------------------------------------------
# General Aliases
#---------------------------------------------
alias aliases=alias

#env
alias home="pushd ~"
alias downloads="pushd ~/Downloads"
alias devenv="pushd ~/dev-macos > /dev/null"
alias script=${EDIT_CMD}  

# command prompt should show user@machine and then the full path
PS1="[dev] \w$ "

# initial dir
echo
echo "type aliases for aliases."
echo
proj
