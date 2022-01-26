;; 快捷键提示
; (use-package which-key
;   :defer nil
;   :config
;   (which-key-mode)
; )

(use-package which-key
  :defer 0
  :diminish which-key-mode
  :config
  (which-key-mode)
  (setq which-key-idle-delay 1)
)

(provide 'init-which-key)
