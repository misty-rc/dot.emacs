;;; -*- coding: utf-8 -*-
(setq default-directory "c:/users/arai/")
(setq command-line-default-directory "c:/users/arai")


;;;** 標準IMEの設定
(setq default-input-method "W32-IME")
;;;** IMEの初期化
(w32-ime-initialize)
;;;** IME状態のモードライン表示
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
;;;** IME OFF時の初期カーソルカラー
(set-cursor-color "red")
;;;** IME ON/OFF時のカーソルカラー
(add-hook 'input-method-activate-hook
          (lambda() (set-cursor-color "green")))
(add-hook 'input-method-inactivate-hook
          (lambda() (set-cursor-color "red")))

;;;** バッファ切り替え時にIME状態を引き継ぐ
(setq w32-ime-buffer-switch-p nil)

;; フォント
;; abcdefghijklmnopqrstuvwxyz
;; ABCDEFGHIJKLMNOPQRSTUVWXYZ
;; `1234567890-=\[];',./
;; ~!@#$%^&*()_+|{}:"<>?
;;
;; 壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五
;; 123456789012345678901234567890123456789012345678901234567890
;; ABCdeＡＢＣｄｅ
;;
;; ┌─────────────────────────────┐
;; │　　　　　　　　　　　　　罫線                            │
;; └─────────────────────────────┘
;;

(defconst FONT_FAMILY "Migu 1M")
(defconst FONT_SIZE 12)
(set-frame-font (concat FONT_FAMILY "-" (format "%s" FONT_SIZE)))

(setq default-file-name-coding-system 'shift_jis) ;dired文字化け対策

;; frame set
(setq default-frame-alist
       (append (list
                '(left . 30)
                '(top  . 10)
                '(width  .  150)
                '(height .  50)
                )
               default-frame-alist))
