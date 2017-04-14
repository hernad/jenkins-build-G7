#!/bin/bash

uname -a

BRANCH=oo_boot2docker_iso

git clone https://github.com/hernad/G7-windows.git
git checkout $BRANCH -f
git pull
cd G7-windows
./script/build-windows

cp dist/G7-windows-i386.exe ..

#rm bintray_api_key
