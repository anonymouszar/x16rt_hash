#!/bin/bash
set -ev

BUILD_REPO_URL=https://github.com/anonymouszar/x16rt_hash

cd build

git clone --branch $TRAVIS_TAG $BUILD_REPO_URL x16rt_hash

docker run --rm \
    -v $(pwd):/root/x16rt_hash \
    -t anonymouszar/x16rt-build \
    /root/x16rt_hash/x16rt_hash/contrib/travis/build.sh
