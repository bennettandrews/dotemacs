;; Language Modes
(require 'php-mode)
(require 'nxml-mode)
(require 'ensime)
(require 'markdown-mode)
(require 'scala-mode)
(require 'go-mode)
(require 'puppet-mode)
;; Tools
(require 'ido)
(ido-mode t)
(require 'color-theme)
(require 'color-theme-solarized)
(require 'magit)
(require 'deft)
(setq deft-text-mode 'markdown-mode)
(setq deft-directory "~/Dropbox/Notes")
(setq deft-extension "md")
;; Not using at the moment
;;(require 'yasnippet)

;;(require 'auto-indent-mode)
;;(auto-indent-global-mode)

;;  (setq indent-tabs-mode nil))
;;(require 'redo)
;;(require 'whitespace)
;;(add-hook 'scala-mode-hook 'scala-turnoff-indent-tabs-mode)



