#!/bin/sh

TMP=~/.tmp
mkdir -p $TMP
cd $TMP
curl -s -L https://api.github.com/repos/tvararu/dotfiles/tarball > dotfiles.tar.gz
tar -xzf dotfiles.tar.gz
mv tvararu-dotfiles* dotfiles
cd dotfiles
./install.sh
rm -rf $TMP/*
