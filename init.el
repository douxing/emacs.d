;;
;;
;;

;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst dx-gc-cons-threshold gc-cons-threshold
  "Initial value of 'gc-cons-threshold' at startup time")
(setq gc-cons-threshold (* 32 1024 1024))
;; might like to uncomment these
;;(add-hook 'after-init-hook
;;	  (lambda () (setq gc-cons-threshold dx-predefined/gc-cons-threshold))

(require 'init-site-lisp)
(require 'init-elpa)

;; next we are going to import the files
(require 'init-ido)
(require 'init-tools)
(require 'init-languages)

(global-auto-revert-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(indent-tabs-mode nil)
 '(js-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
