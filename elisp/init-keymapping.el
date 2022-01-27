;; neotree - filemanager
(global-set-key [f8] 'neotree-toggle) ;; Open (toggle) NeoTree


;; ace-window - windows
(global-set-key (kbd "M-o") 'ace-window)


;; centaur-tabs - tab change
(global-set-key (kbd "C-<prior>") 'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)


;; ivy
(global-set-key (kbd "M-x") 'counsel-M-x)


;; avy
; (global-set-key (kbd "C-:") 'avy-goto-char)
; (global-set-key (kbd "C-'") 'avy-goto-char-2)
(provide 'init-keymapping)

