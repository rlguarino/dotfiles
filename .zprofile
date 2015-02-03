#
# Executes commands at login pre-zshrc.
#
# This file is similar to zlogin, but it is sourced before zshrc. It was added
# for KornShell fans.
#
# zprofile and zlogin are not meant to be used concurrently but can be done so.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi

