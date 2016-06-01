;; nyam-mode
(use-package nyan-mode
  :init (nyan-mode t)
  :ensure t)

(use-package undo-tree
  :ensure t
  :config (undo-tree-mode))

(provide 'init-tools)
