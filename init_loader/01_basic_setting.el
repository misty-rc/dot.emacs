(require 'server)
(server-start)

(set-language-environment  'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default tab-width 4 indent-tabs-mode nil)
(tool-bar-mode 0)
(show-paren-mode 1)
(global-hl-line-mode t)
(which-function-mode 1)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/.backup"))
            backup-directory-alist))

;; theme
;;(load-theme 'atom-dark t)
;;(load-theme 'zenburn t)
;;(load-theme 'lush t)
;;(load-theme 'gotham t)
;;(load-theme 'warm-night t)
(load-theme 'tronesque t)
