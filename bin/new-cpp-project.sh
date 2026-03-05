#!/usr/bin/env bash

name=$1
mkdir "$name"
cd "$name" || exit 1
conan new -d "name=$name" -d version=0.1.0 modules-template
conan build .
ln -s build/Release/compile_commands.json .
git init
