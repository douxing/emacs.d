;; elixir-lang
(use-package elixir-mode
  :ensure t)

;; javascript 
(use-package coffee-mode
  :ensure t)
(use-package js2-mode
  :ensure t
  :mode (("\\.js$" . js2-mode))
  :config (progn
	    (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
	    (custom-set-variables '(js2-basic-offset 2))))

;; company
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-languages)
