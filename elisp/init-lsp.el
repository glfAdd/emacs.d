;; ----------------------------------------------
;; 代码, 命令 补全
;; ----------------------------------------------
;; Emacs 下 LSP 协议库, 核心
(use-package lsp-mode 
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  ((python-mode . lsp))
)


;; (use-package lsp-ui
;;   :init
;;   :after 
;;     lsp-mode
;;   :config
;;     (setq lsp-ui-sideline-delay 0.1) ; 在显示边线之前等待几秒钟
;;   :commands
;;     lsp-ui-mode
;; )


;; ;; 补全系统、部分常用命令、搜索功能
;; (use-package lsp-ivy
;;   :init
;;   :commands
;;     lsp-ivy-workspace-symbol
;; )


;; (use-package lsp-treemacs
;;   :init
;;   :commands
;;   lsp-treemacs-errors-list
;; )


;; ;; 全文补全框架
;; (use-package company
;;   :config
;;   (global-company-mode t)
;;   (setq company-idle-delay 0.3) ; 输入时, 代码补全延迟
;;   (setq company-backends
;;     '((company-files
;;       company-keywords
;;       company-capf
;;       company-yasnippet
;;       )
;;       (company-abbrev company-dabbrev)))
;; )


(provide 'init-lsp)
