#!/usr/bin/perl
use strict;
use warnings;

my $user = $ENV{'LOGNAME'};
my $homedir = $ENV{'HOME'};

print "Must be ran from ~";

unlink("$homedir/.emacs");
unlink("$homedir/.tmux.conf");
unlink("$homedir/.vimrc.local");
unlink("$homedir/.oh-my-zsh/custom/override.zsh");

system("stow -d dotfiles tmux");
system("stow -d dotfiles zsh -t .oh-my-zsh/custom/ zsh");
system("stow -d dotfiles emacs");

print "Setup Complete\n";
print "Please Restart Terminal for Changes to Take Effect\n";
### END OF FILE
