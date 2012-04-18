(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.(rb|gem|gemspec)$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-to-list 'auto-mode-alist  '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\)\\'" . nxml-mode))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))

(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))


