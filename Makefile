.Phony: pall update vim tmux zsh ssh emacs
.IGNORE: vim tmux zsh ssh emacs

.DEFAULT: install
install: tmux zsh ssh emacs
	@echo "Finished install"

all: vim tmux zsh ssh emacs
	@echo "Finised configuration"

clean:
	@echo "Cleaning up"
	unlink $(HOME)/.vimrc.local
	rm -rf $(HOME)/.vimrc
	rm -rf $(HOME)/.vimrc.bundles
	unlink $(HOME)/.vimrc.backup
	unlink $(HOME)/.tmux.conf
	unlink $(HOME)/.oh-my-zsh/custom/override.zsh
	unlink $(HOME)/.ssh/config
	unlink $(HOME)/.emacs

vim: vimcheck viminstall
	@echo "Configuring vim"
	unlink $(HOME)/.vimrc.local
	ln -s $(HOME)/dotfiles/vim/vimrc.local $(HOME)/.vimrc.local

tmux: tmuxcheck
	@echo "Configuring tmux"
	unlink $(HOME)/.tmux.conf
	ln -s $(HOME)/dotfiles/tmux/tmux.conf $(HOME)/.tmux.conf

zsh: zshcheck zshinstall
	@echo "Configuring zsh"
	unlink $(HOME)/.oh-my-zsh/custom/override.zsh
	ln -s $(HOME)/dotfiles/zsh/override.zsh $(HOME)/.oh-my-zsh/custom/override.zsh

ssh: sshcheck
	@echo "Configuring ssh"
	unlink $(HOME)/.ssh/config
	ln -s $(HOME)/dotfiles/ssh/ssh.conf $(HOME)/.ssh/config
	chmod 600 $(HOME)/.ssh/config

emacs: emacscheck
	@echo "Configuring emacs"
	unlink $(HOME)/.emacs
	ln -s $(HOME)/dotfiles/emacs/emacs $	(HOME)/.emacs

zshinstall: curlcheck
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
	@touch zshinstall

viminstall: curlcheck
	rm spf13-vim.sh
	curl http://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
	@touch viminstall

.Phony: vimcheck tmuxcheck zshcheck emacscheck curlcheck
vimcheck:
	$(HOME)/dotfiles/install/vim
	which vim >> /dev/null

tmuxcheck:
	$(HOME)/dotfiles/install/tmux

zshcheck:
	$(HOME)/dotfiles/install/zsh

emacscheck:
	$(HOME)/dotfiles/install/emacs

sshcheck:
	$(HOME)/dotfiles/install/ssh

curlcheck:
	which curl >> /dev/null
