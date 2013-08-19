#!/usr/bin/perl
use strict;
use warnings;

my $user = $ENV{'LOGNAME'};
my $homedir = $ENV{'HOME'};
my $argc = @ARGV;
my $type = $ARGV[0];
my $arg1 = $ARGV[1];

system("git clone https://github.com/rguarino/dotfiles.git $homedir/dotfiles");
system("curl http://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh");
system("curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh");
system("ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf");
system("ln -s ~/dotfiles/ssh/config ~/.ssh/config");
system("chmod 644 ~/.ssh/config");
system("ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish");
system("ln -s $homedir/dotfiles/vim/vimrc.local $homedir/.vimrc.local");
system("ln -s $homedir/dotfiles/zsh/override.zsh $homedir/.oh-my-zsh/custom/override.zsh");
system("sudo su -c \'echo \"/usr/bin/fish/\" >> /etc/shells\'");
print "Type : $type\n";
print "Type : $arg1\n";
print "Setup Complete\n";
if($argc >= 2){
    if( $type eq "-s"){
        system("chsh -s $arg1");
    }
}
print "Please Restart Terminal for Changes to Take Effect\n";
if($argc != 2){
    print "run \'chsh -s /usr/bin/fish\' to change your shell to fish\n";
    print "or \'chsh -s /bin/zsh\' to change your shell to zsh\n";
}
print "To remove the numbers plugin run BundleClean and then rm -rf ~/.vimview\n";
print "View the github page https://github.com/fish-shell/fish-shell.git\n";
print "Have Fun!";

### END OF FILE
