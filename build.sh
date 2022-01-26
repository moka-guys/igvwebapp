#!/bin/sh
TAG=$(sed -n 's/^.*IGV_VERSION=\(.*\)$/\1/p' Dockerfile)
echo Building version $TAG
docker buildx build --platform linux/amd64 -t seglh/igvwebapp:$TAG .
