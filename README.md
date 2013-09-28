.dotfiles
=========
###Written By [Ross Guarino](https://github.com/rlguarino)
###Forked from [Ethan House](http://github.com/ehouse)
[![endorse](http://api.coderwall.com/rosslg/endorsecount.png)](http://coderwall.com/rosslg)

My Personalized Environment Configuration Files

###Clone
Clone this repo using the command: 
'''
git clone https://github.com/rguarino/dotfiles.git
'''

###Setup
Run the install located in the bin folder of the repo
'''
./dotfiles/setup.pl
'''

###Troubshooting
If you get some errors along the lines of
'''
stow: ERROR: canon_path: cannot chdir to dotfiles from /usr/home/rlguarino/dotfiles (No such file or directory)
'''
It is because you are not running the script from your home directory. 'cd ~' first then try '.dotfiles/setup.pl' again

###Dependencies
[GNU Stow](http://www.gnu.org/software/stow/)