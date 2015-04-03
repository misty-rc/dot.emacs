(require 'multiple-cursors)
(require 'expand-region)

(defun mc/mark-all-dwim-or-expand-region (arg)
  (interactive "p")
  (cl-case arg
    (16 (mc/mark-all-dwim t))
    (4 (mc/mark-all-dwim nil))
    (1 (call-interactively 'er/expand-region))))

;; C-M-SPCでer/expand-region
;; C-u C-M-SPCでmc/mark-all-in-region
;; C-u C-u C-M-SPCでmc/edit-lines
(global-set-key (kbd "C-M-SPC") 'mc/mark-all-dwim-or-expand-region)
