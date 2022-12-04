;; ----------------------------------------------
;; 补全系统
;; ----------------------------------------------
(use-package ivy
  ;; :diminish ivy-mode
  ;; :hook (after-init . ivy-mode)
  :init
    ;; (ivy-mode 1)
    ;; (counsel-mode 1)
  :config
  (setq ivy-height 15) ;; 缓冲区高度
  (setq ivy-count-format "%d/%d") ;; 匹配总量统计
  (setq ivy-re-builders-alist ;; 模糊查询
      '((t . ivy--regex-plus)))

  ; (setq ivy-fzf-path ':)
  ;;(setq ivy-use-virutal-buffers t)
  ;;(setq ivy-initial-inputs-alist nil)
)


;; ----------------------------------------------
;; 部分常用功能
;; ----------------------------------------------
(use-package counsel
  :bind
  ; ("M-x" . counsel-M-x)
  ; ("C-x C-m" . counsel-M-x)
  ; ("C-x C-f" . counsel-find-file)
  ; ("C-x c k" . counsel-yank-pop)
)


;; ----------------------------------------------
;; 搜索功能
;; ----------------------------------------------
;; 文件中搜索
(use-package swiper
  :bind
  ; ("C-s" . swiper)
  ; ("C-x s" . swiper)
  ; ("C-x C-r" . ivy-resume)
)


(provide 'init-ivy)
