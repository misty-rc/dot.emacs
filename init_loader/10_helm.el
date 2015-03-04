(setq dired-bind-jump nil)
(require 'helm)
(require 'helm-config)
(require 'helm-descbinds)
(require 'helm-gtags)
(helm-mode 1)
(helm-descbinds-mode)

(setq helm-delete-minibuffer-contents-from-point t)
(add-hook 'java-mode-hook 'helm-gtags-mode)

;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
             (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))
