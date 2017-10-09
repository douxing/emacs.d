(column-number-mode t)
(global-auto-revert-mode t)

(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-hook
	  '(lambda () (gtags-mode 1)))

(provide 'init-editing-utils)
