(add-to-list 'load-path "~/.emacs.d/settings")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (solarized)))
 '(inhibit-startup-screen t)
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; theme settings
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized t)
(add-hook 'after-make-frame-functions
 (lambda (frame)
  (let ((mode (if (display-graphic-p frame) 'light 'dark)))
    (set-frame-parameter frame 'background-mode mode)
    (set-terminal-parameter frame 'background-mode mode))
    (enable-theme 'solarized)))

(require 'clang-complete-settings)

(require 'org-mode-settings)

(require 'generic-settings)
