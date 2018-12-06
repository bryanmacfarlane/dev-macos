set -e

gb
APPNAME=${PWD##*/}
echo running $APPNAME 
$APPNAME "$@"