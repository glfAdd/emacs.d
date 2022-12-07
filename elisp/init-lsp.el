;; python 自动
(setq lsp-pyls-server-command "~/.local/bin/pyls")			
(setq lsp-pylsp-server-command "~/.local/bin/pylsp")			


;; ----------------------------------------------
;; lsp: 集成代码开发环境
;; ----------------------------------------------
(use-package lsp-mode
    :init
    ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
    (setq lsp-keymap-prefix "C-c l")
    :hook (
        (python-mode . lsp-deferred) ; 表示启用 python-mode 时调用 lsp, 延迟加载
        ;; if you want which-key integration
        (lsp-mode . lsp-enable-which-key-integration)
    )
    :commands
    (lsp lsp-deferred)
)


;; ----------------------------------------------
;; 集成 flycheck 和更高级别的 UI 模块
;; ----------------------------------------------
(use-package lsp-ui
    :init
    :commands lsp-ui-mode
)

(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(use-package which-key
    :config
    (which-key-mode))


;; ----------------------------------------------
;; 代码补全
;; ----------------------------------------------


(provide 'init-lsp)
