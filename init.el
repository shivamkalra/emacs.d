;; (setq debug-on-error t)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; Keeps ~Cask~ file in sync with the packages
(require 'pallet)
(pallet-mode t)
(require 'use-package)

(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-set-upstream-on-push (quote dontask))
 '(magit-use-overlays nil)
 '(yas-prompt-functions (quote (my-yas/prompt))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "gold" :foreground "#002b36" :inverse-video t))))
 '(fringe ((t (:background "#003036" :foreground "#586e75"))))
 '(hl-line ((t (:background "#1e3337")))))
