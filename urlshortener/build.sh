#!/bin/bash

set -e

cd $(dirname $0)
PROJECT_ROOT=$PWD
PROTOC_PLUGIN_ROOT=$PWD/../dart-protoc-plugin
STREAMY_ROOT=$PWD/..

PROTO_OUT=$PROJECT_ROOT/lib/proto
DISCOVERY_OUT=$PROJECT_ROOT/lib/discovery

mkdir -p $PROTO_OUT $DISCOVERY_OUT

cd $PROTOC_PLUGIN_ROOT
make build-plugin

cd $PROJECT_ROOT
protoc --plugin=$PROTOC_PLUGIN_ROOT/out/protoc-gen-dart urlshortener.proto --dart_out=$PROTO_OUT

cd $STREAMY_ROOT
dart bin/apigen.dart --discovery-file=$PROJECT_ROOT/urlshortener.json --client-file-name=urlshortener --output-dir=$DISCOVERY_OUT
mv $DISCOVERY_OUT/lib/*.dart $DISCOVERY_OUT
rm $DISCOVERY_OUT/pubspec.yaml
rmdir $DISCOVERY_OUT/lib 