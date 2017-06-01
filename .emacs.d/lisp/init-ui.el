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

;; Set font
(set-default-font "Courier New-14.5")

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

;; Show line number
(setq column-number-mode t)
(setq line-number-mode t)
(global-linum-mode t)

;; Disable scroll-bar
(customize-set-variable 'scroll-bar-mode' right)
(set-scroll-bar-mode 0)
(put 'scroll-lefg 'disabled nil)
(put 'scroll-right 'disabled nil)

;; Disable toolbar
(tool-bar-mode 0)
;;(menu-bar-mode 0)

;; Replace yes-or-no with y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;; Hilight syntex
(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
(setq global-font-lock-mode t)

;; Custom backup file
;;(setq version-control t)
;; (setq kept-old-versions 2)
;; (setq kept-new-versions 1)
;; (setq delete-old-versions t)
;; (setq backup-directory-alist '(("." . "~/backups")))
;; (setq backup-by-copying t)

;; No back & tmp file
(setq make-backup-files nil)
(setq-default make-backup-files nil)

;; Set fill mode
(setq-default auto-fill-function 'do-auto-fill)
 ; Autofill in all modes;;
(setq default-fill-column 120)

;; Set TAB
(setq-default indent-tabs-mode nil)
(setq default-tab-width 8)
(setq tab-stop-list ())

;; Set sentence-end against chinese char
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;; Match parent style
(setq show-paren-style 'parenthesis)

;; Open image
(setq auto-image-file-mode t)

;; Open compressive file
(auto-compression-mode 1)

;; Set title
(setq frame-title-format "emacs@%b")
(setq inital-frame-alist '((width . 90) (height . 35)))

;; Set my profile
(setq user-full-name "Mr.Zero")
(setq user-mail-address "fusu1435@gmail.com")

;; Close warn bell
(setq visible-bell t)					
(setq ring-bell-function 'ignore)

;; Close startup page
(setq inhibit-startup-message t)		
(setq gnus-inhibit-startup-message t)

;; Display time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)


(setq scroll-margin 3 scroll-conservatively 10000)

;; Set calendar 
;;(setq calendar-load-hook
;;'(lambda ()
;;(set-face-foreground 'diary-face "skyblue")
;;(set-face-background 'holiday-face "slate blue")
;;(set-face-foreground 'holiday-face "white")))

;; Set chinese calendar
(setq chinese-calendar-celestial-stem
  ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
(setq chinese-calendar-terrestrial-branch
  ["子" "丑" "寅" "卯" "辰" "巳" "戊" "未" "申" "酉" "戌" "亥"])

;; Set default value
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1) 
(setq mark-diary-entries-in-calendar t)
(setq mark-holidays-in-calendar nil) 
(setq view-calendar-holidays-initially nil)


(provide 'init-ui)