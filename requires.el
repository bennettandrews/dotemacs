(require 'ido)
(ido-mode t)
(require 'color-theme)
(require 'color-theme-solarized)
(require 'redo)
(require 'whitespace)
(require 'markdown-mode)
(require 'scala-mode-auto)
(require 'php-mode)
(require 'nxml-mode)
(defun scala-turnoff-indent-tabs-mode ()
  (setq indent-tabs-mode nil))

(add-hook 'scala-mode-hook 'scala-turnoff-indent-tabs-mode)


(require 'ensime)
;;(require 'yasnippet)

