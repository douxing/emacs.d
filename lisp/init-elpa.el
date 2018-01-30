;;
(require 'package)

(setq package-archives
      '(;;("gnu" . "http://elpa.gnu.org/packages/")
	;;("melpa" . "http://melpa.org/packages/")
	;;("melpa-stable" . "http://stable.melpa.org/packages/")
	("gnu" . "http://mirrors.163.com/elpa/gnu/")
	("marmalade" . "http://mirrors.163.com/elpa/marmalade/")
	("melpa" . "http://mirrors.163.com/elpa/melpa/")
	("melpa-stable" . "http://mirrors.163.com/elpa/melpa-stable/")
	("org" . "http://mirrors.163.com/elpa/org/")
	("user42" . "http://mirrors.163.com/elpa/user42/")))
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
