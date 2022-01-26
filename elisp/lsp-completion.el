;; 代码, 命令 补全

(use-package lsp-mode ; Emacs 下 LSP 协议库
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  ((python-mode . lsp))
)

(use-package lsp-ui 
  :init
  :config
  (setq lsp-ui-sideline-delay 0.1) ; 在显示边线之前等待几秒钟
  :commands 
  lsp-ui-mode
)

(use-package lsp-ivy ; 补全系统、部分常用命令、搜索功能
  :init
  :commands 
  lsp-ivy-workspace-symbol
)

(use-package lsp-treemacs 
  :init
  :commands 
  lsp-treemacs-errors-list
)


(provide 'lsp-completion)
