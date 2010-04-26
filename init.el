(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; add all the directories in .emacs.d/vendor/ to the path
(let* ((files (directory-files "~/.emacs.d/vendor" t "[^\.+]")))
  (mapcar (lambda (d) (add-to-list 'load-path d)) files))

(load "requires")
(load "modes")
(load "bindings")
(load "helpers")

(setq backup-directory-alist
      (cond ((eq system-type 'windows-nt)
	     '((".*" . "c:/temp")))
	    ((eq system-type 'gnu/linux)
	     '((".*" . "~/.emacs.tmp")))
	    ((eq system-type 'vax-vms)
	     nil)))


(setq ido-enable-flex-matching t) ;;fuzzy matching!!!


(setq x-select-enable-clipboard t)
(column-number-mode t)

(tool-bar-mode nil)
(menu-bar-mode nil)

(setq inhibit-startup-message 't)

(show-paren-mode t)

(global-font-lock-mode t)
(which-func-mode t)
(column-number-mode t)




;;f**k you beeps
(setq ring-bell-function 'ignore)




