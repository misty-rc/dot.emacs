;;; -*- coding: utf-8 -*-

;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;;; package initialize
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;; package install
(require 'cl)
(defvar installing-package-list
  '(
    init-loader
    auto-complete
    direx
    emmet-mode
    flycheck
    go-mode
    go-eldoc
    go-direx
    go-autocomplete
    helm
    helm-descbinds
    helm-flycheck
    helm-package
    js2-mode
    magit
    popwin
    powerline
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

