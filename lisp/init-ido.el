;;
(use-package ido
  :init (progn
	  (ido-mode 1)
	  (ido-everywhere 1))
  :config (progn
	    (setq ido-enable-flex-matching t)))

(use-package ido-ubiquitous
  :config (progn
	    (ido-ubiquitous-mode t)))

(use-package smex
  :init (progn
	  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
	  (smex-initialize))
  :bind ("M-x" . smex)) ;; or smex-major-mode-commands

(dx-package-install 'idomenu)

(provide 'init-ido)
