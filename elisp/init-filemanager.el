;; 文件目录
(use-package neotree 
  :init
  :custom
  (neo-theme 'nerd2)
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  ; (setq neo-smart-open t)
  (setq-default neo-show-hidden-files t) ;; 显示隐藏文件夹
  ; (progn
  ;   (setq neo-theme (if (display-graphic-p) 'icons 'nerd))
  ;   (setq neo-window-fixed-size nil)
  ;   ; (global-set-key [f2] 'neotree-toggle)
  ;   ; (global-set-key [f8] 'neotree-dir)
  ;   )
)

(provide 'init-filemanager)
