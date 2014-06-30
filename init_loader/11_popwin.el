;; popwin
(require 'popwin)
;;(popwin-mode 1)
;;(setq display-buffer-function 'popwin:display-buffer)
;;(setq popwin:popup-window-position 'bottom)

(defvar popwin:special-display-config-backup popwin:special-display-config)
(custom-set-variables
 '(display-buffer-function 'popwin:display-buffer))

;; shell-mode
(push '("^\*shell*" :regexp t :position bottom :height 0.3 :dedicated t)
      popwin:special-display-config)

;; direx
(push '(direx:direx-mode :position left :width 0.3 :dedicated t)
      popwin:special-display-config)

;; go-mode
(push '("^\*go-direx:" :regexp t :position right :width 0.3 :dedicated t)
      popwin:special-display-config)

;; flycheck
(push '(flycheck-error-list-mode :stick t) popwin:special-display-config)
