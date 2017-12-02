(column-number-mode t)
(global-auto-revert-mode t)

(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-hook
	  '(lambda () (gtags-mode 1)))

;; @see https://stackoverflow.com/questions/3631220/fix-to-get-smooth-scrolling-in-emacs
(setq
 scroll-conservatively 1000                     ;; only 'jump' when moving this far
 scroll-margin 4                                ;; scroll N lines to screen edge
 scroll-step 1                                  ;; keyboard scroll one line at a time
 mouse-wheel-scroll-amount '(6 ((shift) . 1))   ;; mouse scroll N lines
 mouse-wheel-progressive-speed nil              ;; don't accelerate scrolling

 redisplay-dont-pause t                         ;; don't pause display on input

 ;; Always redraw immediately when scrolling,
 ;; more responsive and doesn't hang!
 fast-but-imprecise-scrolling nil
 jit-lock-defer-time 0
 )

(provide 'init-editing-utils)
