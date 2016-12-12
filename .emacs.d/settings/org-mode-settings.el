(setq org-capture-templates
 '(("n" "Notes" entry (file+datetree "~/org/daily.org")
   "* %^{Description} %? - %U %^g")
   ("t" "TODO" entry (file+datetree "~/org/daily.org")
    "* TODO %? %^g\n  Added at: %U")
   ("j" "Journal" entry (file+datetree "~/org/journal.org")
    "** %^{Heading}\n  %?")))

(setq org-agenda-files '("~/org"))
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-todo-keywords
 '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
   (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)")))

(setq org-todo-keyword-faces
 '(("TODO" :foreground "red" :weight bold)
   ("NEXT" :foreground "blue" :weight bold)
   ("DONE" :foreground "forest green" :weight bold)
   ("WAITING" :foreground "orange" :weight bold)
   ("HOLD" :foreground "magenta" :weight bold)
   ("CANCELLED" :foreground "forest green" :weight bold)))

(add-hook 'org-mode-hook
 (lambda ()
   (set-face-attribute 'org-level-1 nil :height 1.6)
   (set-face-attribute 'org-level-2 nil :height 1.4)
   (set-face-attribute 'org-level-3 nil :height 1.2)
   (set-face-attribute 'org-level-4 nil :foreground "#657b83")
   (define-key org-mode-map (kbd "×") (kbd "*"))))

(provide 'org-mode-settings)
