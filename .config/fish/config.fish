
set -xg VISUAL vim
set -xg EDITOR vim
set -xg GOPATH $HOME

set -xg PATH $PATH $GOPATH/bin

# Ensure this happens after all other modifications to $PATH
eval (python -m virtualfish)
