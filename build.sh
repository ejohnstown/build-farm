#!/bin/bash

if test "x$1" = "x"
then
    echo "usage $0 tag_id"
    exit
fi

IMAGES=( "debian-jessie" "ubuntu-xenial" "ubuntu-bionic" "ubuntu-focal" "ubuntu-groovy" )

for IMAGE in "${IMAGES[@]}"
do
    echo "Building $IMAGE..."
    VERSION=$(echo "$IMAGE" | cut -f 2 -d '-' -)

    pushd "$IMAGE" >/dev/null || exit 2

    docker build -t "farm-$VERSION:$1" -t "farm:$VERSION" .

    popd >/dev/null || exit 2
done
