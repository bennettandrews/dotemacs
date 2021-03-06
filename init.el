(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/elisp")
;; TODO: fix this
(add-to-list 'load-path "~/.emacs.d/elisp/ensime/elisp")

;;TODO fix this
(setq exec-path (append exec-path (list "/usr/local/bin")))

;; add all files in elisp
(let* ((files (directory-files "~/.emacs.d/elisp" t "[^\.+]")))
  (mapcar (lambda (d) (add-to-list 'load-path d)) files))

(load "requires")
(load "modes")
(load "bindings")
(load "helpers")

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/")))))

(defalias 'yes-or-no-p 'y-or-n-p)

;;fuzzy matching!!!
(setq ido-enable-flex-matching t)

(setq search-highlight t)
(setq x-select-enable-clipboard t)
(column-number-mode t)

(setq inhibit-startup-message 't)

(show-paren-mode t)
(transient-mark-mode t)
(global-font-lock-mode t)
(which-func-mode t)
(column-number-mode t)
(menu-bar-mode -1)

;; Remove unnecessary gui stuff
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;f**k you beeps
(setq ring-bell-function 'ignore)

                                        ; make whitespace-mode use just basic coloring
(setq whitespace-style (quote
                        ( spaces tabs newline space-mark tab-mark newline-mark)))

;; make whitespace-mode use “¶” for newline and “▷” for tab.
;; together with the rest of its defaults
(if window-system
    (setq whitespace-display-mappings
          '(
     (space-mark 32 [183] [46]) ; normal space, ·
     (space-mark 160 [164] [95])
     (space-mark 2208 [2212] [95])
     (space-mark 2336 [2340] [95])
     (space-mark 3616 [3620] [95])
     (space-mark 3872 [3876] [95])
     (newline-mark 10 [182 10]) ; newlne, ¶
     (tab-mark 9 [9655 9] [92 9]) ; tab, ▷
     )))

;; no tabs
(setq-default indent-tabs-mode nil)

(setq-default tab-width 4)

(setq c-basic-offset 4)

(if window-system
    (color-theme-solarized-dark))

;; Display any trailing whitespace
;;(setq-default show-trailing-whitespace t)
(setq-default show-trailing-whitespace nil)

(if window-system
  (custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
   '(default ((t (:slant normal :weight normal :height 130 :width normal :foundry "apple" :family "Monaco"))))))
