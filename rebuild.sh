#!/bin/sh

fail() {
	echo $1
	exit 1
}

echo "Compiling engine"
cd engine
make clean all-dependencies all SDK="-sdk:4.5" || fail "please run $0 again"
cd ..

echo "Compiling AS"
cd mods/as && make clean mod && cd ../..

echo "Compiling yupgi_alert"
cd mods/yupgi_alert && make clean mod && cd ../..

echo "Compiling RA2A"
cd mods/ra2a && make clean mod && cd ../..

echo "Compiled everything"
