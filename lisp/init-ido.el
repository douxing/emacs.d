;;
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)

(dx-package-install 'ido-ubiquitous)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode t)

(dx-package-install 'smex)
(setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
(smex-initialize)
;; we can change between smex and smex-major-mode-commands
;; but personally, i prefer smex
(global-set-key [remap execute-extended-command] 'smex)
;; (global-set-key [remap execute-extended-command] 'smex-major-mode-commands)

(dx-package-install 'idomenu)

(provide 'init-ido)
