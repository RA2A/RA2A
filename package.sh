#!/bin/bash

if [ $# -ne "2" ]; then
    echo "Usage: `basename $0` version outputdir"
    exit 1
fi

MOD="RA2A"
BUILDDIR="RA2A-$1"
REPODIR=$(readlink -f $(dirname $0))
VERSION="$1"

mkdir -p "$2"
pushd "$2" >/dev/null

rm -rf "$BUILDDIR" "$BUILDDIR.zip"
mkdir -p "$BUILDDIR"

echo "Preparing standalone installation for tag \"$VERSION\" into \"$(pwd)/$BUILDDIR\""
cp -r $REPODIR/engine/*.{exe,dll,dll.config} "$BUILDDIR"
cp -r "$REPODIR/engine/mods" "$REPODIR/engine/glsl" "$REPODIR/engine/lua" "$REPODIR/engine/global mix database.dat" "$BUILDDIR"
cp -r $REPODIR/engine/thirdparty/download/windows/*.dll "$BUILDDIR"
cp -r "$REPODIR/mods" "$BUILDDIR"

echo "Creating $BUILDDIR.zip"
zip -rq "$BUILDDIR.zip" "$BUILDDIR"
echo "Creating $BUILDDIR.tar.gz"
tar cfz "$BUILDDIR.tar.gz" "$BUILDDIR"
echo "Creating $BUILDDIR.tar.bz"
tar cfj "$BUILDDIR.tar.bz" "$BUILDDIR"

echo "Finished"

popd >/dev/null
