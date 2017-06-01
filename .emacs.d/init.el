;; init.el

;; Add ./lisp/ to load-path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(package-initialize)

(add-to-list 'load-path	(expand-file-name "lisp" user-emacs-directory))

;; Custom init
(require 'init-elpa)
(require 'init-fonts)
(require 'init-themes)
(require 'init-config)

(provide 'init)
