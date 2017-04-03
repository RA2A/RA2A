#!/bin/sh

fail() {
	echo $1
	exit 1
}

echo "Compiling engine"
cd engine
make clean all-dependencies all || fail "please run $0 again"
cd ..
