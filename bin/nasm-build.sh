#!/usr/bin/env bash

source_file=$1
elf_file=$(echo "$source_file" | awk -F'.' '{print $1}')
object_file="$elf_file.o"

nasm -felf64 "$source_file" && ld -o "$elf_file" "$object_file"
