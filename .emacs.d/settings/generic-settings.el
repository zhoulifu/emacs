(add-hook 'before-save-hook
 (lambda () (if (not (eq major-mode 'markdown-mode)) (delete-trailing-whitespace))))

(show-paren-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'generic-settings)
