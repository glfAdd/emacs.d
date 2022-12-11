;; ----------------------------------------------
;; 左侧文件管理
;; ----------------------------------------------
;(global-set-key [f2] 'neotree-dir)
;(global-set-key [f7] 'neotree-refresh)
;(global-set-key [f8] 'neotree-toggle)
(global-set-key (kbd "M-o") 'neotree-refresh)



;; ----------------------------------------------
;; ace-window - windows
;; ----------------------------------------------
(global-set-key (kbd "M-o") 'ace-window)



;; centaur-tabs - tab change
;(global-set-key (kbd "C-<prior>") 'centaur-tabs-backward)
;(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)
;
;
;;; ivy
;(global-set-key (kbd "M-x") 'counsel-M-x) ;; 命令模糊搜索
;(global-set-key (kbd "C-x C-m") 'counsel-M-x) ;; 命令模糊搜索
;(global-set-key (kbd "C-x C-f") 'counsel-find-file) ;; 模糊搜索文件
;(global-set-key (kbd "C-x c k") 'counsel-yank-pop)
;(global-set-key (kbd "C-s") 'swiper) ;; 模糊搜索字符串
;(global-set-key (kbd "C-x s") 'swiper) ;; 模糊搜索字符串
;(global-set-key (kbd "C-x C-r") 'ivy-resume)
;(global-set-key (kbd "C-c n") 'counsel-fzf) ;; 模糊查询
;
;;; avy
;; (global-set-key (kbd "C-:") 'avy-goto-char)
;; (global-set-key (kbd "C-'") 'avy-goto-char-2)



(provide 'init-keymapping)

