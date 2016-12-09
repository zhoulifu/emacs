(add-hook 'before-save-hook
 (lambda () (if (not (eq major-mode 'markdown-mode)) (delete-trailing-whitespace))))

(provide 'generic-settings)
