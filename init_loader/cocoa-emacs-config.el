
(create-fontset-from-ascii-font "Ricty-14:weight=normal:slant=normal" nil "ricty")
(set-fontset-font "fontset-ricty"
                  'unicode
                  (font-spec :family "Ricty" :size 14)
                  nil
                  'append)
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))

;; frame set
(setq default-frame-alist
       (append (list
                '(left . 30)
                '(top  . 10)
                '(width  .  160)
                '(height .  60)
                )
               default-frame-alist))
