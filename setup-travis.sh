#!/bin/sh

echo "Setting up submodules (HTTPS)"
sed -i 's|git@github.com:|https://github.com/|g' .gitmodules
git submodule update --init --recursive
