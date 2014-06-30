;; flycheck-info
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(progn
     (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
     (define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck)
     ))
