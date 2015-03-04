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
;; TODO: move to custom lisp 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(yas-prompt-functions (quote (my-yas/prompt))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-selection ((t (:background "#002B36" :underline t))))
 '(helm-source-header ((t (:background "#002B36" :foreground "#2AA198" :underline nil)))))
