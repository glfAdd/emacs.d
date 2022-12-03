(use-package doom-modeline
  :init
    (doom-modeline-mode 1)
  ;; :hook
  ;;   (after-init . doom-modeline-init)
  :config
    (setq doom-modeline-height 25) ; 高度
    (setq doom-modeline-bar-width 4) ; 宽度
    ;; (setq doom-modeline-icon t)
    ;; (setq doom-modeline-buffer-state-icon t)

)


(provide 'init-doom-modeline)
