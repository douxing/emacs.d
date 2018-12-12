;; nyam-mode
(use-package nyan-mode
  :init (nyan-mode t)
  :ensure t)

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode
  :config (global-undo-tree-mode))

;(use-package magit)

(use-package switch-window
  :ensure t
  :config (progn
	    (setq-default switch-window-shortcut-style 'alphabet)
	    (global-set-key (kbd "C-x o") 'switch-window)))

(use-package magit
  :ensure t
  :config (progn
	    (global-set-key (kbd "C-x g") 'magit-status)))

(provide 'init-tools)
