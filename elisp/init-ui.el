;; ----------------------------------------------
;; 图标字体
;; ----------------------------------------------
(use-package all-the-icons
    :if(display-graphic-p)
)


;; ----------------------------------------------
;; Theme
;; ----------------------------------------------
(use-package gruvbox-theme 
    :init 
    ;; (load-theme 'gruvbox-dark-soft t)
    ;; (load-theme 'gruvbox-dark-medium t)
    ;; (load-theme 'gruvbox-dark-hard t)
    ;; (load-theme 'gruvbox-light-medium t)
    ;; (load-theme 'gruvbox-light-soft t)
    (load-theme 'gruvbox-light-hard t))


;; ----------------------------------------------
;; mode line
;; ----------------------------------------------
(use-package smart-mode-line 
    :init 
    (setq sml/no-confirm-load-theme t) 
    (setq sml/theme 'respectful) 
    ;; (setq sml/theme 'dark)
    ;; (setq sml/theme 'light)
)


;; ----------------------------------------------
;; Welcome dashboard
;; banner 在 -nw 模式下无法显示图片
;; ----------------------------------------------
;; (use-package dashboard
;;   :init
;;     (dashboard-setup-startup-hook)
;;   :config
;;     (setq dashboard-set-init-info t)
;;     (setq dashboard-banner-logo-title "Highlord Mograine . The Ashbringer") ; 签名
;;     ;; (setq dashboard-init-info "Highlord Mograine . The Ashbringer") ; logo title 下文字, 不设置就显示加载时间
;;     ;; (setq dashboard-set-footer nil) ; 随机脚注
;;     ;; (setq dashboard-startup-banner "C:\\Users\\xxx\\AppData\\Roaming\\.emacs.d\\banner\\old6.gif") ; banner
;;     (setq dashboard-startup-banner "~/.emacs.d/banner/old6.gif")
;;     (setq dashboard-center-content t) ; 居中
;;     (setq dashboard-set-heading-icons t) ; 添加图标
;;     (setq dashboard-set-file-icons t) ; 添加图标
;; )

(provide 'init-ui)
