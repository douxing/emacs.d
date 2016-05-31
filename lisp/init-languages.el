;; elixir-lang
(use-package elixir-mode
  :ensure t)

;; javascript 
(use-package coffee-mode
  :ensure t)
(use-package js2-mode
  :ensure t)

;; company
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-languages)
