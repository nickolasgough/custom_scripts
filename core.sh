#!/bin/bash

### Custom core ###


### Core aliases


### Editor aliases
alias w="webstorm"
alias g="goland"
alias p="pycharm"
alias s="subl"

### Directory aliases
alias home="cd $HOME"
alias projects="cd $HOME/Projects"
alias downloads="cd $HOME/Downloads"
alias desktop="cd $HOME/Desktop"
alias custom="cd $HOME/.custom"
alias go="cd $HOME/go"

### Git aliases
alias master="git checkout master"
alias checkout="git checkout"
alias branch="git branch"
alias pull="git pull"
alias status="git status"
alias add="git add"
alias commit="git commit -m"
alias push="git push"
alias fuck='git push --set-upstream origin `active_branch`'
alias merge="git merge"
alias reset="git reset"

### Angular aliases
alias ngstart="npm start"
alias ngrun="npm run dev:$1"
alias ngtest="npm run test"
alias nglint="npm run lint"


### Core paths ###


### Development path
export DEVPATH="$HOME/Development"
export PROJECTS="$HOME/Projects"


### Core functions ###


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
