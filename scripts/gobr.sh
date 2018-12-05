set -e

gob
APPNAME=${PWD##*/}
echo running $APPNAME 
$APPNAME "$@"