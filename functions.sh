#!/bin/bash


### Custom functions ###


### Custom function to compile and run C programs.
ccr() {
	in="$1"
	out="$2"
	if [ "$out" = "" ]; then
		out="app.c"
	fi

	gcc -Wall "$in" -o "$out"

	if [ "$?" = 0 ]; then
		./"$out"
	fi
}
