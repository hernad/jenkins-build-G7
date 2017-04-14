#!/bin/bash

uname -a

git clone https://github.com/hernad/G7-windows.git

cd G7-windows
make windows

cp dist/G7-windows-i386.exe ..

#rm bintray_api_key
