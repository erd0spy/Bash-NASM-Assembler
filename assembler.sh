#!/bin/bash

asm_file="${1%%.*}"

nasm -f elf64 ${asm_file}".asm"
ld ${asm_file}".o" -o ${asm_file}
