(add-hook 'before-save-hook
 (lambda () (if (not (eq major-mode 'markdown-mode)) (delete-trailing-whitespace))))

(show-paren-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq-default fill-column 80)

(line-number-mode 1)
(column-number-mode 1)

(provide 'generic-settings)
