#!/bin/bash

[ "$(whoami)" != 'root' ] && { echo "Are you sudo?"; exit 1 ;}

cp -v ./lalapkg /usr/bin/
cp -v lalapkg.conf /etc/
