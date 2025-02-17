#!/bin/bash

repo=registry.jxit.net.cn:5000/microflow/mfa

ver=$(git log --oneline . | wc -l)

docker build . -t $repo:git-$ver

docker push $repo:git-$ver
