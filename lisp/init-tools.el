;; nyam-mode
(use-package nyan-mode
  :init (nyan-mode t)
  :ensure t)

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode
  :config (global-undo-tree-mode))

;(use-package magit)

(provide 'init-tools)
