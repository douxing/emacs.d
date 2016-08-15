;;
(require 'package)

(setq package-archives
      '(;;("gnu" . "http://elpa.gnu.org/packages/")
	;;("melpa" . "http://melpa.org/packages/")
	;;("melpa-stable" . "http://stable.melpa.org/packages/")
	("melpa" . "http://elpa.zilongshanren.com/melpa/")
	("melpa-stable" . "http://elpa.zilongshangren.com/melpa-stable/")))
(package-initialize)

(defun dx-package-install (pkg)
  "require package if not installed"
  (unless (package-installed-p pkg)
    (if (assoc pkg package-archive-contents)
	(package-install pkg)
      (progn ;; refresh before try again
	(package-refresh-contents)
	(package-install pkg)))))

(dx-package-install 'use-package)

(provide 'init-elpa)
