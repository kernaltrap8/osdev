#!/bin/bash
boot() {
	qemu-system-x86_64 -hda boot.bin
}

boot1() {
	qemu-system-x86_64 -nographic -hda boot1.bin
}

$1 $2
