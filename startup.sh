#!/bin/bash

### Custom startup ###


### Convenience aliases
alias restart='source $HOME/.custom/startup.sh'

### Location of .custom
export CUSTOMPATH="$HOME/.custom"


### Load custom core
source $CUSTOMPATH/core.sh

### Load custom aliases
source $CUSTOMPATH/aliases.sh

### Load custom paths
source $HOME/.custom/paths.sh

### Load custom functions
source $CUSTOMPATH/functions.sh


### Custom vgit commands
source ~/vgit/vgit.sh


### Custom terminal prompt
prompt_command() {
	directory="`color_text "\W" "92"`"
	if [ `is_repo` = true ]; then
		branch="`active_branch`"
		jira="`extract_jira "$branch"`"

		gstart="`color_text "git:(" "95"`"
		gmiddle="`color_text "${branch}" "96"`"
		gend="`color_text ")" "95"`"

		jstart="`color_text "jira:(" "93"`"
		jmiddle="`color_text "${jira}" "91"`"
		jend="`color_text ")" "93"`"

		prompt="${directory} ${gstart}${gmiddle}${gend} ${jstart}${jmiddle}${jend}"
	else
		prompt="${directory}"
	fi
	PS1="$prompt `color_text "?" "34"` "
}
PROMPT_COMMAND="prompt_command"
