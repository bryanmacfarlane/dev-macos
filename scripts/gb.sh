set -e
APPNAME=${PWD##*/}
echo "building ${GOOUTPATH}${APPNAME}"
gofmt -w .
go build -o "${GOOUTPATH}${APPNAME}"
go install

