#!/bin/sh
echo Building test version 
docker buildx build -f Dockerfile.test --platform linux/amd64 -t seglh/igvwebapp:test .
docker run --rm -it -p 8085:8085 -v `pwd`/test:/igv/resources/dynamic seglh/igvwebapp:test
