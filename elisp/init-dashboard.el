;; banner 在 -nw 模式下无法显示图片

(use-package dashboard
  :init
  (dashboard-setup-startup-hook)
  (add-hook 'dashboard-mode-hook 'my/dashboard-banner)
  :config
  (setq dashboard-init-info "Highlord Mograine . The Ashbringer") ;; banner 下文字, 不设置就显示加载时间
  (setq dashboard-startup-banner "~/.emacs.d/banner/text1.txt") ;; banner
  ; (setq dashboard-center-content t) ;; 居中
  ; (setq dashboard-set-heading-icons t)
  ; (setq dashboard-set-file-icons t)
  ; (setq dashboard-set-navigator t)
  ; (setq dashboard-items '((recents  . 5)
  ;                       (bookmarks . 5)
  ;                       (projects . 5)
  ;                       (agenda . 5)
  ;                       (registers . 5)))
 ; (setq dashboard-items '((recents  . 5)   ;; 显示多少个最近文件
 ;           (bookmarks . 5)  ;; 显示多少个最近书签
 ;           (projects . 10))) ;; 显示多少个最近项目
)

(provide 'init-dashboard)

