#!/usr/bin/env bash

name=$1
cp -r ~/.local/share/c-templates/my-c-template "$name"
cd "$name" || exit 1
sed -e "s/PROJECT_NAME = main/PROJECT_NAME = test/g" Makefile.tpl >Makefile
rm -rf Makefile.tpl
make generate_comp_commands
git init
