
set -xg VISUAL vim
set -xg EDITOR vim

# Ensure this happens after all other modifications to $PATH
eval (python -m virtualfish)
