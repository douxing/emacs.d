;; elixir-lang
(use-package elixir-mode
  :ensure t)

;; javascript 
(use-package coffee-mode
  :ensure t)

(use-package js2-mode
  :ensure t
  :mode (("\\.js$" . js2-mode)
	 ("\\.es6$" . js2-mode))
  :config (progn
	    ;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
	    (custom-set-variables '(js2-basic-offset 2))))
(use-package json-mode
  :ensure t
  :mode ((".\\json$" . json-mode))
  :config (progn
	    ;; js-indent-level is used to set json-reformat:indent-width
	    (setq js-indent-level 2)))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; company
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-languages)
