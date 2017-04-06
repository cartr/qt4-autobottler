#!/usr/bin/env bash

source $HOME/.travis/job_stages

for i in $( cat bottles-to-build.txt );
do
    brew install --only-dependencies --build-bottle cartr/qt4/$i
    travis_wait 90 brew install --build-bottle cartr/qt4/$i
    brew bottle cartr/qt4/$i
done