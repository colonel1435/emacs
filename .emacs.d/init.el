;; init.el

;; Add ./lisp/ to load-path
(add-to-list 'load-path	(expand-file-name "lisp" user-emacs-directory))

;; Custom init
(require 'init-elpa)
(require 'init-fonts)
(require 'init-themes)
(require 'init-config)
(require 'init-ui)
(require 'init-git)

(provide 'init)
