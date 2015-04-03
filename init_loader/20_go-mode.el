;; go-mode
(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)
     (define-key go-mode-map (kbd "C-c C-o") 'go-direx-pop-to-buffer)
     (define-key go-mode-map (kbd "C-c C-:") 'pop-tag-mark)
     (add-hook 'go-mode-hook
               #'(lambda ()
                   (go-eldoc-setup)))
     (add-hook 'before-save-hook 'gofmt-before-save)
     (substitute-key-definition 'go-import-add 'helm-go-package go-mode-map)))
