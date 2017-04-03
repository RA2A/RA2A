#!/bin/sh

echo "Setting up submodules"
git submodule update --init --recursive && ./rebuild.sh
