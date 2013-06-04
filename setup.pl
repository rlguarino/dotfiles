#!/usr/bin/perl
use strict;
use warnings;

my $user = $ENV{'LOGNAME'};
my $homedir = $ENV{'HOME'};
my $type = $ARGV[1];

system("git clone git://github.com/ehouse/dotfiles.git $homedir/dotfiles");
system("curl http://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh");
system("curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh");
system("ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf");
system("ln -s ~/.dotfiles/ssh/config ~/.ssh/config");
system("chmod 644 ~/.ssh/config");

print "Setup Complete\n";
print "Please Restart Terminal for Changes to Take Effect\n";

### END OF FILE
