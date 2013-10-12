.dotfiles
=========
###Written By [Ross Guarino](https://github.com/rlguarino)
###Forked from [Ethan House](http://github.com/ehouse)
[![endorse](http://api.coderwall.com/rosslg/endorsecount.png)](http://coderwall.com/rosslg)

My Personalized Environment Configuration Files

###Clone
Clone this repo using the command: 
```
git clone https://github.com/rguarino/dotfiles.git $HOME/dotfiles
```
The make files expect the repo to be located in $HOMe/dotfiles

###Setup
To install use GNU make

Usage:
```
cd $HOME/dotfiles
make <program> <program>
```

There are some convenience make targets

To remove the configurations run `make clean` <br />
To install all configurations run `make all` <br />
To install my default configurations (all but vim) run `make install` <br />
