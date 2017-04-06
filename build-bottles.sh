#!/usr/bin/env bash

for i in $( cat bottles-to-build.txt );
do
    brew install --only-dependencies --build-bottle cartr/qt4/$i
    brew install --build-bottle cartr/qt4/$i
    brew bottle cartr/qt4/$i
done