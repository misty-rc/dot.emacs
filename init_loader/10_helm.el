(setq dired-bind-jump nil)
(require 'helm)
(require 'helm-config)
(require 'helm-descbinds)
(helm-mode 1)
(helm-descbinds-mode)

(setq helm-delete-minibuffer-contents-from-point t)
