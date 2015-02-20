(load "package")
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq package-archive-enable-alist '(("melpa" deft magit)))

(defvar rlguarino/packages '(auto-complete
			  autopair
			  flycheck
			  company
			  company-go
			  go-eldoc
			  monokai-theme
			  go-errcheck
			  go-play
			  go-autocomplete
			  gist)
  "Default packages")

(defun rlguarino/packages-installed-p ()
  (loop for pkg in rlguarino/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (rlguarino/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg rlguarino/packages)
    (when (not (package-installed-p pkg))
            (package-install pkg))))
