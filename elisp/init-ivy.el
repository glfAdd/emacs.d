;; 交互式补全工具, 用来补全系统、部分常用命令、搜索功能

(use-package ivy
  :diminish ivy-mode
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-height 15) ;; 缓冲区高度
  (setq ivy-count-format "%d/%d") ;; 匹配总量统计
  ; (setq ivy-fzf-path ':)
  ;;(setq ivy-use-virutal-buffers t)
  ;;(setq ivy-initial-inputs-alist nil)
)

; (use-package counsel
;   :ensure t
;   :bind
;   ; ("M-x" . counsel-M-x)
;   ; ("C-x C-m" . counsel-M-x)
;   ; ("C-x C-f" . counsel-find-file)
;   ; ("C-x c k" . counsel-yank-pop)
; )

; ;; 文件中搜索
; (use-package swiper
;   :ensure t
;   :bind
;   ; ("C-s" . swiper)
;   ; ("C-x s" . swiper)
;   ; ("C-x C-r" . ivy-resume)
; )




(provide 'init-ivy)
