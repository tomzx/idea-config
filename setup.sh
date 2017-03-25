#!/bin/bash
set -u

createSymlink() {
	ln -s $BASE/codestyles/eXolnet.xml $TARGET/codestyles/eXolnet.xml
	ln -s $BASE/colors/Tom.icls $TARGET/colors/Tom.icls
	ln -s $BASE/inspection/eXolnet.xml $TARGET/inspection/eXolnet.xml
	ln -s $BASE/templates/eXolnet.xml $TARGET/templates/eXolnet.xml
}

BASE=`pwd`
for i in 7 8 9 10
do
	TARGET=$HOME/Library/Preferences/WebIde${i}0
	createSymlink
done

for i in 2016.1 2016.2 2016.3 2017.1
do
	TARGET=$HOME/Library/Preferences/PhpStorm${i}
	createSymlink
done

