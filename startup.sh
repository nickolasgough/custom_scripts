#!/bin/bash


### Custom startup ###


### Convenience aliases
alias restart='source $HOME/.custom/startup.sh'

### Location of .custom
export CUSTOMPATH="$HOME/.custom"


### Load custom paths
source $CUSTOMPATH/paths.sh

### Load custom aliases
source $CUSTOMPATH/aliases.sh

### Load custom functions
source $CUSTOMPATH/functions.sh


### Custom terminal prompt
prompt_command() {
	directory="`color_text "\W" "93"`"

	if [ `is_repo` = true ]; then
		branch="`active_branch`"
		jira="`extract_jira "$branch"`"

		gstart="`color_text "git:(" "95"`"
		gmiddle="`color_text "${branch}" "95"`"
		gend="`color_text ")" "95"`"

		jstart="`color_text "jira:(" "96"`"
		jmiddle="`color_text "${jira}" "96"`"
		jend="`color_text ")" "96"`"
	fi

	venv="`current_venv`"

	vstart="`color_text "venv:(" "92"`"
	vmiddle="`color_text "${venv}" "92"`"
	vend="`color_text ")" "92"`"

	if [ `is_repo` = true ]; then
		prompt="${directory} ${gstart}${gmiddle}${gend} ${jstart}${jmiddle}${jend} ${vstart}${vmiddle}${vend}"
	else
		prompt="${directory} ${vstart}${vmiddle}${vend}"
	fi

	PS1="$prompt `color_text "?" "34"` "
}
PROMPT_COMMAND="prompt_command"
