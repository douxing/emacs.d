;; elixir-lang
(use-package elixir-mode
  :ensure t)

;; javascript 
(use-package coffee-mode
  :ensure t)

;; go-lang
(use-package go-mode
  :ensure t
  :config (progn
	    (add-hook 'go-mode-hook (lambda () (setq tab-width 4)))))

;; rust-lang
(use-package cargo
  :ensure  t)

(use-package rust-mode
  :ensure t
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(use-package js2-mode
  :ensure t
  :mode (("\\.js$" . js2-mode)
	 ("\\.es6$" . js2-mode))
  :config (progn
	    ;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
	    (custom-set-variables '(js2-basic-offset 2))
	    ;; http://stackoverflow.com/questions/45861/how-do-i-get-js2-mode-to-use-spaces-instead-of-tabs-in-emacs
	    (setq-default indent-tabs-mode nil)))

(use-package json-mode
  :ensure t
  :mode (("\\.json$" . json-mode))
  :config (progn
	    ;; js-indent-level is used to set json-reformat:indent-width
	    (setq js-indent-level 2)))

;; http://web-mode.org/
(use-package web-mode
  :ensure t
  :mode (("\\.jsx$" . web-mode)
         ("\\.html$" . web-mode)
         ("\\.css$" . web-mode)
         ("\\.vue$" . web-mode))
  :config (progn
	    (setq-default indent-tabs-mode nil)
      (setq-default tab-width 2)
      (setq web-mode-code-indent-offset 2)
      (setq web-mode-markup-indent-offset 2)
      (setq web-mode-css-indent-offset 2)
      (setq web-mode-indent-style 2)
      (setq web-mode-script-padding 2)
      (setq web-mode-style-padding 2)))

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
