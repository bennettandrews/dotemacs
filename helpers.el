(defun swap-windows ()
  (interactive)
  (save-excursion
  (let ((current-buf (window-buffer (selected-window)))
        (other-buf (window-buffer (next-window (selected-window)))))
    (set-window-buffer (selected-window) other-buf)
    (set-window-buffer (next-window (selected-window)) current-buf))))
