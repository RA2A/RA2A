#!/bin/sh

# Change this to match your mod
MODID="ra2a"

# Don't edit below this line
MODLAUNCHER=$(python -c "import os; print(os.path.realpath('$0'))")
MODROOT=$(dirname "$MODLAUNCHER")

cd engine

echo $MODROOT/mods

# TODO: Remove ./mods from the search path after we deprecate cross-mod references
mono OpenRA.Game.exe Engine.LaunchPath="$MODLAUNCHER" "Engine.ModSearchPaths=./mods,$MODROOT/mods" Engine.DefaultMod=$MODID Game.Mod=$MODID "$@"

cd ..
