;; ----------------------------------------------
;; 快捷键提示
;; ----------------------------------------------

(use-package which-key
  :config
    (which-key-mode)
    (setq which-key-idle-delay 1)
    (setq which-key-popup-type 'side-window) ; minibuffer minibuffer minibuffer
    (setq which-key-side-window-location 'bottom) ; left right bottom
    (setq which-key-side-window-max-width 0.33)
    (setq which-key-side-window-max-height 0.25)
    (setq which-key-frame-max-width 60)
    (setq which-key-frame-max-height 20)

    (setq which-key-idle-delay 0.8)
    (setq which-key-max-description-length 27) ; 命令最大宽度






)


(provide 'init-which-key)
