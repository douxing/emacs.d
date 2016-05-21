;; Set load-path
(eval-when-compile (require 'cl))
(let* ((site-lisp-dir (expand-file-name "site-lisp/" user-emacs-directory)))
  (progn
    (setq load-path
	  (append
	   (loop for dir in (directory-files site-lisp-dir)
		    unless (string-match "^\\." dir)
		    collecting (expand-file-name dir))
	  load-path))))

(provide 'init-site-lisp)
