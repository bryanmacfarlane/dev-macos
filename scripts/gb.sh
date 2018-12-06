set -e
APPNAME=${PWD##*/}
echo building $APPNAME
gofmt -w .
go build
go install

