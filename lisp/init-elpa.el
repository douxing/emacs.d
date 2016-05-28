;;
(require 'package)

(setq package-archives
      '(;;("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")
	("melpa-stable" . "https://stable.melpa.org/packages/")))
(package-initialize)

(defun dx-package-install (pkg)
  "require package if not installed"
  (unless (package-installed-p pkg)
    (if (assoc pkg package-archive-contents)
	(package-install pkg)
      (progn ;; refresh before try again
	(package-refresh-contents)
	(dx-package-install pkg)))))

(provide 'init-elpa)
