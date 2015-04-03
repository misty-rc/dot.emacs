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
;;(load-theme 'tronesque t)


(require 'dired)
;; ファイルなら別バッファで、ディレクトリなら同じバッファで開く
(defun dired-open-in-accordance-with-situation ()
  (interactive)
  (let ((file (dired-get-filename)))
    (if (file-directory-p file)
        (dired-find-alternate-file)
      (dired-find-file))))

;; dired-find-alternate-file の有効化
(put 'dired-find-alternate-file 'disabled nil)
;; RET 標準の dired-find-file では dired バッファが複数作られるので
;; dired-find-alternate-file を代わりに使う
(define-key dired-mode-map (kbd "RET") 'dired-open-in-accordance-with-situation)
(define-key dired-mode-map (kbd "a") 'dired-find-file)

