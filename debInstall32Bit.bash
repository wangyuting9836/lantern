#!/usr/bin/env bash

function die() {
  echo $*
  exit 1
}

if [ $# -ne "2" ]
then
    die "$0: Received $# args... version and whether or not this is a release required"
fi

cp lib/linux/x86/libunix-java.so install/linux/lib
./debInstall.bash $* 32 690
rm install/linux/lib/*
