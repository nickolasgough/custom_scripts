#!/bin/bash

### Custom startup script ###


### Load custom core
source $CUSTOMPATH/core.sh

### Load custom aliases
source $CUSTOMPATH/aliases.sh

### Load custom paths
source $HOME/.custom/paths.sh

### Load custom functions
source $CUSTOMPATH/functions.sh


### Custom terminal prompt
prompt_command() {
	directory="`color_text "\W" "93"`"
	if [ `is_repo` = true ]; then
		branch="`active_branch`"
		start="`color_text "git:(" "95"`"
		middle="`color_text "${branch}" "96"`"
		end="`color_text ")" "95"`"
		prompt="${directory} ${start}${middle}${end}"
	else
		prompt="${directory}"
	fi
	PS1="$prompt `color_text "?" "34"` "
}
PROMPT_COMMAND="prompt_command"
