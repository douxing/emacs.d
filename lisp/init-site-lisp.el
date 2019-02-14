;;; Set load-path
(eval-when-compile (require 'cl))
(let* ((site-lisp-dir (expand-file-name "site-lisp/" user-emacs-directory)))
  (progn
    (setq load-path
	  (append
	   (remove-if-not
	    (lambda (dir) (file-directory-p dir))
	    (directory-files site-lisp-dir t "^[^.]+$"))
	   load-path))))

(provide 'init-site-lisp)
