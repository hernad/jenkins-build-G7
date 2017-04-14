#!/bin/bash

uname -a

BRANCH=oo_boot2docker_iso

[ ! -d G7-windows ] && git clone https://github.com/hernad/G7-windows.git

cd G7-windows



git checkout $BRANCH -f

git fetch origin
git merge origin/$BRANCH

./script/build-windows

cp dist/G7-windows-i386.exe ..

#rm bintray_api_key
