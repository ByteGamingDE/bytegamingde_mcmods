#!/bin/bash

MODZIP=$1
MODTAG=$2
MODVERSION=$3

MODDIR=$HOME/mc-mods

TMPDIR=$(mktemp -d ${MODDIR}/pack.XXXX)

mkdir $TMPDIR/mods/
cp $MODZIP $TMPDIR/mods/
P=$(pwd)
cd $TMPDIR
zip -r mod.zip mods

cd $P
mkdir -p ${MODDIR}/mods/${MODTAG}
cp ${TMPDIR}/mod.zip ${MODDIR}/mods/${MODTAG}/${MODTAG}-${MODVERSION}.zip

rm -rf $TMPDIR
