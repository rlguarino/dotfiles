(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(require 'multi-term)

(setq multi-term-program "/bin/zsh")

;; ===== Set the highlight current line minor mode ===== 

;; In every buffer, the line which contains the cursor will be fully
;; highlighted


(global-linum-mode 1)
;;(global-hl-line-mode 1)

;; ===== Set standard indent to 4 ====
(setq standard-indent 4)

;; ===== Turn off tab character =====

;;
;; Emacs normally uses both tabs and spaces to indent lines. If you
;; prefer, all indentation can be made from spaces only. To request this,
;; set `indent-tabs-mode' to `nil'. This is a per-buffer variable;
;; altering the variable affects only the current buffer, but it can be
;; disabled for all buffers.

;;
;; Use (setq ...) to set value locally to a buffer
;; Use (setq-default ...) to set value globally 
;;
(setq-default indent-tabs-mode nil) 

;; ========== Place Backup Files in Specific Directory ==========

;; Enable backup files.
(setq make-backup-files t)
(setq backup-by-copying t)
;; Enable versioning with default values (keep five last versions, I think!)
(setq version-control t)

;; Save all backup file in this directory.
(setq backup-directory-alist `(("." . "~/.emacs_backups")))
