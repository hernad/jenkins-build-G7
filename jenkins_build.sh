#!/bin/bash

uname -a

BRANCH=oo_boot2docker_iso

git clone https://github.com/hernad/G7-windows.git
git pull
git checkout $BRANCH -f
cd G7-windows
./script/build-windows

cp dist/G7-windows-i386.exe ..

#rm bintray_api_key
