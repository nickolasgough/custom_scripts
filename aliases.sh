#!/bin/bash


### Custom aliases ###


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

### Project aliases
alias website="cd $PROJECTS/angular/website"
alias game-net="cd $PROJECTS/flutter/game_net"
alias rpg="cd $PROJECTS/ue4/rpg"
alias cloud-receipts="cd $GOPATH/src/cloud-receipts"
alias ng-components="cd $PROJECTS/angular/ng-components"

### Database aliases
alias scdb="psql -U postgres -d socialclouddb"

### School aliases
alias archive="cd $HOME/Desktop/archive"
alias tuxworld="ssh nvg081@tuxworld.usask.ca"
alias projworld="ssh nvg081@cmpt400g1.usask.ca"
