# RA2A

## Cloning
After cloning, you need to clone the submodules too.

### Linux / OSX
`./setup.sh`

### Windows
Check the manual of your git clients for instruction how to do that.

## Building
### Linux / OSX
`./rebuild.sh`

### Windows
Use Visual Studio or install make and mono and use the instructions for Linux.

## Running
After building everything using make or Visual Studio, you should launch the OpenRA.exe with the arguments ` Engine.ModSearchPaths=./mods,../mods Engine.DefaultMod=ra2a Game.Mod=ra2a`
