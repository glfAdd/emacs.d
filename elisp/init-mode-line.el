;; 底部状态栏
; (use-package smart-mode-line
;     :init
;     (setq sml/no-confirm-load-theme t)
;     (setq sml/theme 'respectful)
;     (sml/setup)
; )
(use-package doom-modeline
    :hook (after-init . doom-modeline-mode)
)

(provide 'init-mode-line)
