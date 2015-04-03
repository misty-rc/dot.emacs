(setq dired-bind-jump nil)
(require 'helm)
(require 'helm-config)
(require 'helm-descbinds)
(require 'helm-gtags)
(helm-mode 1)
(helm-descbinds-mode)

(setq helm-delete-minibuffer-contents-from-point t)
(add-hook 'java-mode-hook 'helm-gtags-mode)

;;; ag以外の検索コマンドも使える
;; (setq helm-ag-base-command "grep -rin")
;; (setq helm-ag-base-command "csearch -n")
(setq helm-ag-base-command "pt --nocolor --nogroup")
;;; 現在のシンボルをデフォルトのクエリにする
(setq helm-ag-insert-at-point 'symbol)
;;; C-M-gはちょうどあいてる
(global-set-key (kbd "C-M-g") 'helm-ag)
(global-set-key (kbd "C-M-k") 'backward-kill-sexp) ;推奨

;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
             (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))

