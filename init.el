;;; init --- everything begins here
;;; Commentary:
;;; no comment

;;; Code:

(defconst emacs-start-time (current-time))

(setq package-enable-at-startup nil
      message-log-max 16384
      gc-cons-threshold 402653184
      gc-cons-percentage 0.6
      auto-window-vscroll nil)

(add-hook 'after-init-hook
          '(lambda ()
             (setq gc-cons-threshold 800000
                   gc-cons-percentage 0.1)
             (garbage-collect)) t)

;;; Functions

;;; Environment

;;; init package
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
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;;; User Defined Packages

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-editing-utils)

;; next we are going to import the files
(require 'init-ido)
(require 'init-tools)
(require 'init-languages)

(setq create-lockfiles nil)

;;; Finalization

(let ((elapsed (float-time (time-subtract (current-time)
                                          emacs-start-time))))
  (message "Loading %s...done (%.3fs)" load-file-name elapsed))

(add-hook 'after-init-hook
          '(lambda ()
             (let ((elapsed
                    (float-time
                     (time-subtract (current-time) emacs-start-time))))
               (message "Loading %s...done (%.3fs) [after-init]"
                        load-file-name elapsed))) t)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2)
 '(package-selected-packages
   '(use-package undo-tree switch-window smex nyan-mode magit idomenu ido-ubiquitous go-mode diminish color-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
