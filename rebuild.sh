#!/bin/sh

cd engine
make clean all-dependencies all || echo "please run $0 again"
cd ..
