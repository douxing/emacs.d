;;; begin of the file

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; (let (path) ; add PATH to exec-path
;;  (setq path (split-string(getenv "PATH") ":"))
;;  (dolist (p path) (add-to-list) 'exec-path path))

(defconst dx-gc-cons-threshold gc-cons-threshold
  "Initial value of 'gc-cons-threshold' at startup time")
(setq gc-cons-threshold (* 32 1024 1024))
;; might like to uncomment these
;;(add-hook 'after-init-hook
;;	  (lambda () (setq gc-cons-threshold dx-predefined/gc-cons-threshold))

(require 'init-site-lisp)
(require 'init-elpa)

(require 'init-editing-utils)

;; next we are going to import the files
(require 'init-ido)
(require 'init-tools)
(require 'init-languages)

;;; end of the file
