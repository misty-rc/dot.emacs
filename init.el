;;; -*- coding: utf-8 -*-

(setq url-proxy-services '(("http" . "10.10.8.10:8080")
                           ("https" . "10.10.8.10:8080")))

;;; package initialize
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives  '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)

;;; package install
(require 'cl)
(defvar installing-package-list
  '(
    init-loader
    multiple-cursors
    expand-region
    auto-complete
    direx
    emmet-mode
    flycheck
    expand-region
    go-mode
    go-eldoc
    go-direx
    go-autocomplete
    go-projectile
    google
    projectile
    helm
    helm-ag
    helm-descbinds
    helm-flycheck
    helm-package
    helm-gtags
    helm-go-package
    helm-projectile
    helm-google
    js2-mode
    markdown-mode
    markdown-mode+
    magit
    twittering-mode
    popwin
    yasnippet
    tronesque-theme
    rainbow-delimiters
    rainbow-mode
    web-mode
    ))
(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

;;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/init_loader")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(which-func ((t (:foreground "midnight blue")))))
