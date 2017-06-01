;; init-config

;; Config ido
(ido-mode t)
(setq ido-save-directory-list-file nil)

;; auto load evil-mode
(evil-mode 1)

;; config ace-jump-mode
;;C-c SPC” ==> ace-jump-word-mode
;;enter first character of a word, select the highlighted key to move to it.
;;C-u C-c SPC” ==> ace-jump-char-mode
;;enter a character for query, select the highlighted key to move to it.
;;C-u C-u C-c SPC” ==> ace-jump-line-mode
;;each non-empty line will be marked, select the highlighted key to move to it.
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)

;; config electric-pair-mode
(electric-pair-mode 1)
(setq electric-pair-pairs '(
                            (?\" . ?\")
                            (?\` . ?\`)
							(?\' . ?\')
                            (?\( . ?\))
                            (?\{ . ?\})
							(?\[ . ?\])
							(?\< . ?\>)
                            ))

;;

;; config evil-leader
(global-evil-leader-mode)
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)

;; config evil-matchit
(global-evil-matchit-mode 1)

;; config evil-nerd-commenter
;; Emacs key bindings
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

;; Vim key bindings
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "."  'evilnc-copy-and-comment-operator
  "\\" 'evilnc-comment-operator ; if you prefer backslash key
)

(add-hook 'c-mode-common-hook
  (lambda ()
    ;; Preferred comment style
    (setq comment-start "// "
          comment-end "")))
(add-hook 'java-mode-common-hook
  (lambda ()
    ;; Preferred comment style
    (setq comment-start "/* "
          comment-end " */")))

;; Config auto-complete
(ac-config-default)
(defcustom ac-modes
  '(emacs-lisp-mode
    lisp-mode
    lisp-interaction-mode
    c-mode cc-mode c++-mode
    java-mode clojure-mode scala-mode
    scheme-mode
    ocaml-mode tuareg-mode
    perl-mode cperl-mode python-mode ruby-mode
    ecmascript-mode javascript-mode js-mode js2-mode php-mode css-mode
    makefile-mode sh-mode fortran-mode f90-mode ada-mode
    xml-mode sgml-mode)
  "Major modes `auto-complete-mode' can run on."
  :type '(repeat symbol)
  :group 'auto-complete)

		  
(provide 'init-config)