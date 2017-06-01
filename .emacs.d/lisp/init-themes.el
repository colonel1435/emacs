;; custom theme packages
;; can be removed
(add-to-list 'load-path
             (expand-file-name "lisp/custom_themes" user-emacs-directory))
(setq custom-theme-directory
      (expand-file-name "lisp/custom_themes" user-emacs-directory))

(require 'color-theme)
(require 'color-theme-solarized)
;; if you don't customize it, this is the theme you get
(setq-default custom-enabled-themes '(color-theme-solarized))

;; set dark background
;;(set-frame-parameter nil 'background-mode 'dark)

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      ;;(load-theme theme)))
	  (color-theme-solarized)))
	  
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes)


;; Toggle between light and dark
(defun light ()
  "Activate a light color theme."
  (interactive)
  (color-theme-solarized-light))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (color-theme-solarized-dark))

(provide 'init-themes)