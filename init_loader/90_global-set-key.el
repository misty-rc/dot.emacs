;; キー変換
(keyboard-translate ?\C-h ?\C-?)

;; 日本語入力
(global-set-key [M-kanji] 'ignore)

;; helm
(global-set-key (kbd "C-;") 'helm-mini)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c b") 'helm-descbinds)
(global-set-key (kbd "C-c o") 'helm-occur)
(global-set-key (kbd "C-c y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

;; direx
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
