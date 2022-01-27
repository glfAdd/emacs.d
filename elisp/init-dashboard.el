;; banner 在 -nw 模式下无法显示图片

(use-package dashboard
  :init
  (dashboard-setup-startup-hook)
  :config
  (setq dashboard-set-init-info t)
  (setq dashboard-init-info "Highlord Mograine . The Ashbringer") ;; banner 下文字, 不设置就显示加载时间
  (setq dashboard-set-footer nil) ;; 底部文字
  (setq dashboard-startup-banner "~/.emacs.d/banner/text1.txt") ;; banner
  ; (setq dashboard-center-content t) ;; 选项居中
)


(provide 'init-dashboard)

