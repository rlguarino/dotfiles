(setq tab-width 2
      indent-tabs-mode nil)

;;; Stop backup files
(setq make-backup-files nil)

;;; Alias yes and no to y and n
(defalias 'yes-or-no-p 'y-or-n-p)

;;; Stop beeping
(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)

;;; Always hilight parens
(show-paren-mode t)

;;; Highlight trailing whitespace
(setq-default show-trailing-whitespace t)

;;; Flyspell configuration
(setq flyspell-issue-welcome-flag nil)
(if (eq system-type 'darwin)
    (setq-default ispell-program-name "/usr/local/bin/aspell")
  (setq-default ispell-program-name "/usr/bin/aspell"))
(setq-default ispell-list-command "list")

;; Turn on linum and separate with a |
(global-linum-mode 1) ; turn on linum
(setq linum-format "%4d \u2502 ")

;; Company Go
(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
;;(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

