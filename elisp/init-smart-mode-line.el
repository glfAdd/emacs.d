;; 底部状态栏
(use-package smart-mode-line 
    :init 
    (setq sml/no-confirm-load-theme t) 
    (setq sml/theme 'respectful) 
    (sml/setup)
)

(provide 'init-smart-mode-line)
