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

;; config evil-matchit
(global-evil-matchit-mode 1)

(provide 'init-config)