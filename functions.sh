#!/bin/bash


### Custom functions ###


### Is dir git repo
is_repo() {
    if [ -d `pwd`/.git ]; then
        echo true
    else
        echo false
    fi
}

### Get git branch name
active_branch() {
    git branch | grep "^*" | cut -d " " -f 2
}

### Color given text with given color
color_text() {
    echo "\e[${2}m${1}\e[m"
}

### Custom function to list all colors
list_colors() {
    color=0
    while [ "$color" -lt 100 ]; do
        text="`color_text "Hello, World!" "$color"`"
        echo "$text"
        color=$((color + 1))
    done
}

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
