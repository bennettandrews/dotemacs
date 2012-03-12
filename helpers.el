(defun swap-windows ()
  (interactive)
  (save-excursion
  (let ((current-buf (window-buffer (selected-window)))
        (other-buf (window-buffer (next-window (selected-window)))))
    (set-window-buffer (selected-window) other-buf)
    (set-window-buffer (next-window (selected-window)) current-buf))))

(defmacro maybe-require (package &optional body)
  "Tries to load the specified package. If it succeeds, then body is executed (if provided)."
  (if body
      `(lambda ()
	 (require ,package nil t)
	 (if (featurep ,package)
	     ,@body))
    `(require ,package nil t)))

(defun google ()
  "Prompt for a query in the minibuffer, launch the web browser and query google."
  (interactive)
  (let ((search (read-from-minibuffer "Google Search: ")))
    (browse-url (concat "http://www.google.com/search?q=" search))))

(defun indent-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))









