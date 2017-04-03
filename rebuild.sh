#!/bin/sh

fail() {
	echo $1
	exit 1
}

cd engine
make clean all-dependencies all || fail "please run $0 again"
cd ..
