(setq warning-suppress-types nil)
(setq debug-on-error t)
(setq user-full-name "Ross Guarino")
(setq user-mail-address "rssguar@gmail.com")
(package-initialize)

(require 'cl)

;;;; Load after loads
(load "~/.emacs.d/eval_after_load.el")

;;;; Load paths
(load "~/.emacs.d/loadpaths.el")

;;;; Load appearance as soon as possible
(load "~/.emacs.d/appearance")

;;;; Auto-load packages
(load "~/.emacs.d/autopackage")

;;;; Load defuns
(load "~/.emacs.d/defuns")

;;;; Loads
(load "~/.emacs.d/loads")

;;;; Autoloads
;;(load "~/.emacs.d/autoloads")

;;;; Hooks
(load "~/.emacs.d/hooks")

;;;; Load variable
(load "~/.emacs.d/variables")

;;;; Load Key Combinations
(load "~/.emacs.d/keycombs")



