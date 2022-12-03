;; ----------------------------------------------
;; icon
;; ----------------------------------------------
(use-package all-the-icons
  :if (display-graphic-p))


;; ----------------------------------------------
;; Theme
;; ----------------------------------------------
(use-package gruvbox-theme 
    :init 
    (load-theme 'gruvbox-dark-soft t)
)


;; ----------------------------------------------
;; Welcome dashboard
;; banner 在 -nw 模式下无法显示图片
;; ----------------------------------------------
(use-package dashboard
  :init
  (dashboard-setup-startup-hook)
  :config
  (setq dashboard-set-init-info t)
  (setq dashboard-banner-logo-title nil) ;; banner 下面问题, 图片太大时不显示
  (setq dashboard-init-info "Highlord Mograine . The Ashbringer") ;; logo title 下文字, 不设置就显示加载时间
  (setq dashboard-set-footer nil) ;; 底部文字
  (setq dashboard-startup-banner "~/.emacs.d/banner/magic0.gif") ;; banner
  ; (setq dashboard-center-content t) ;; 选项居中
)


(provide 'init-ui)