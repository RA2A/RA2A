#!/bin/sh

fail() {
	echo $1
	exit 1
}

echo "Compiling engine"
cd engine
make clean all-dependencies all SDK="-sdk:4.5" || fail "please run $0 again"
cd ..
