#!/bin/bash


### Custom environment configurations ###


### Google cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nickolas-gough/google-cloud-sdk/path.zsh.inc' ];
    then . '/Users/nickolas-gough/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nickolas-gough/google-cloud-sdk/completion.zsh.inc' ];
    then . '/Users/nickolas-gough/google-cloud-sdk/completion.zsh.inc';
fi

### Load custom paths
source $CUSTOMPATH/paths.sh
