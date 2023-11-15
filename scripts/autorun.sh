#!/bin/sh

# Function to not open a program which is already opened.
run () {
	if ! pgrep -f "$1"; then
		"$@"&
	fi
}

# The programs.
run firefox
run thunar ~
run obsidian
run SoundWireServer
run pavucontrol
run fcitx5

