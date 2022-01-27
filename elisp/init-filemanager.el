;; 文件目录
(use-package neotree 
  :init
  :config
  (setq-default neo-show-hidden-files t) ;; 显示隐藏文件夹
  :custom
  (neo-theme 'nerd2) ;; 图标样式
)

(provide 'init-filemanager)
