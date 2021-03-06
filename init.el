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
