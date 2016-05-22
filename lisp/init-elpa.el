;;
(require 'package)

(setq package-archives
      '(;;("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")
	("melpa-stable" . "https://stable.melpa.org/packages/")))
(package-initialize)

(defun dx-init-elpa/package-install (pkg)
  "require package if not installed"
  (unless (package-installed-p pkg)
    (package-install pkg)))

(provide 'init-elpa)
