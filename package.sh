#!/bin/bash

if [ $# -ne "2" ]; then
    echo "Usage: `basename $0` version outputdir"
    exit 1
fi

MOD="RA2A"
BUILDDIR="$2/RA2A-$1"
VERSION="$1"


rm -rf "$BUILDDIR" "$BUILDDIR.zip"
mkdir -p "$BUILDDIR"

echo "Preparing standalone installation for tag \"$VERSION\" into \"$BUILDDIR\""
cp -r engine/*.{exe,dll,dll.config} "$BUILDDIR"
cp -r "engine/mods" "engine/glsl" "engine/global mix database.dat" "$BUILDDIR"
cp -r engine/thirdparty/download/windows/*.dll "$BUILDDIR"
cp -r "mods" "$BUILDDIR"

echo "Creating $BUILDDIR.zip"
zip -rq "$BUILDDIR.zip" "$BUILDDIR"
echo "Creating $BUILDDIR.tar.gz"
tar cfz "$BUILDDIR.tar.gz" "$BUILDDIR"
echo "Creating $BUILDDIR.tar.bz"
tar cfj "$BUILDDIR.tar.bz" "$BUILDDIR"

echo "Finished"
