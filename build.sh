#!/bin/bash

set -ex

PACKAGE=github.com/gosexy/gettext/go-xgettext

go get -u $PACKAGE

for PLATFORM in linux darwin windows; do
  EXT=""
  if [ "$PLATFORM" = "windows" ]; then
    EXT=".exe"
  fi
  GOOS=$PLATFORM GOARCH=amd64 go build -o vendor/go-xgettext-$PLATFORM$EXT $PACKAGE
done
