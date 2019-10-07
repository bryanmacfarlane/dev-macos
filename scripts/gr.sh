#!/bin/bash
set -e

gb
APPNAME=${PWD##*/}
APPPATH="${GOOUTPATH}${APPNAME}"
echo running "${APPPATH}" 
$APPPATH "$@"