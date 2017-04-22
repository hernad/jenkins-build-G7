#!/bin/bash

uname -a

FILE=G7-windows-x86_64.exe
 
BRANCH=amd64

[ ! -d G7-windows ] && git clone https://github.com/hernad/G7-windows.git

cd G7-windows

[ -f ../$FILE ] && rm ../$FILE

git checkout $BRANCH -f

git fetch origin
git merge origin/$BRANCH

./script/build-windows

if [ $? != 0 ] ; then
   echo "docker build ERROR"
   exit 1
fi

cp dist/$FILE ..

#rm bintray_api_key
