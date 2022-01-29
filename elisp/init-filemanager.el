;; 文件目录
(use-package neotree 
  :init
  :config
  (setq-default neo-show-hidden-files nil) ;; 默认不显示隐藏文件
  :custom
  (neo-theme 'nerd2) ;; 图标样式
)

(provide 'init-filemanager)
