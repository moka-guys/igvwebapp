#!/bin/sh
TAG=$(sed -n 's/^.*IGV_VERSION=\(.*\)$/\1/p' Dockerfile)
echo Building version $TAG
docker build -t seglh/igvwebapp:$TAG .
