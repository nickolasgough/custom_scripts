#!/bin/bash


### Custom paths ###


### Development path
export DEVPATH="$HOME/Development"
export PROJECTS="$HOME/Projects"

### Add GoLang path
export GOPATH="$PROJECTS/go"
export GOROOT="/usr/local/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin"

### Add Flutter path
export FLUTTERPATH="$DEVPATH/flutter/bin"
export PATH="$PATH:$FLUTTERPATH"

### Add Postgres path
export PSQLPATH="/Library/PostgreSQL/11/bin"
export PATH="$PATH:$PSQLPATH"

### Add Java path
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.5.jdk/Contents/Home"
