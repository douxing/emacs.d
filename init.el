;;
;;
;;

;;
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst douxing-predefined/gc-cons-threshold gc-cons-threshold
  "Initial value of 'gc-cons-threshold' at startup time")
(setq gc-cons-threshold (* 128 1024 1024))
;; might like to uncomment these
;;(add-hook 'after-init-hook
;;	  (lambda () (setq gc-cons-threshold douxing-predefined/gc-cons-threshold))

(require 'init-site-lisp)
(require 'init-elpa)
