#!/bin/bash
set -u

BASE=`pwd`
for i in 7 8 9
do
	TARGET=$HOME/Library/Preferences/WebIde${i}0
	mkdir -p $TARGET/codestyles $TARGET/templates
	ln -s $BASE/codestyles/eXolnet.xml $TARGET/codestyles/eXolnet.xml
	ln -s $BASE/templates/eXolnet.xml $TARGET/templates/eXolnet.xml
done
