;; Init ui layout
(set-foreground-color "grey")	;;foreground-color
(set-background-color "black")	;;background-color
(set-cursor-color "gold1")		;;cursor-color
(set-mouse-color "gold1")		;; mouse-color

;; highlight background & region
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;; full screen
(global-set-key [f11] 'm_full_screen)
(defun m_full_screen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

;; maximized
(defun m_maximized ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)

;;m_maximized
(setq column-number-mode t)
(setq line-number-mode t)
(customize-set-variable 'scroll-bar-mode' right)
(set-scroll-bar-mode 0)
(tool-bar-mode 0)
;;(menu-bar-mode 0)
(setq frame-title-format "emacs@%b")
(setq inital-frame-alist '((width . 90) (height . 35)))
(setq visible-bell t)					;;close warn bell
(setq ring-bell-function 'ignore)
;;(setq inhibit-startup-message t)		;;close startup page
(setq gnus-inhibit-startup-message t)
(put 'scroll-lefg 'disabled nil)
(put 'scroll-right 'disabled nil)
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(provide 'init-ui)