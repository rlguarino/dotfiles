(eval-after-load 'go-mode
  '(progn
     (define-key go-mode-map (kbd "C-c C-r") 'go-remove-unused-imports)
          (define-key go-mode-map (kbd "M-.") (lambda () (interactive) (godef-jump (point) current-prefix-arg)))))
