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


(use-package lsp-ui
    :init
    :commands lsp-ui-mode
)

(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))



(use-package company
    :init
    (global-company-mode t)
    :config
    (setq company-minimum-prefix-length 1) ; 只需敲 1 个字母就开始进行自动补全
    (setq company-tooltip-align-annotations t)
    (setq company-idle-delay 0.0)
    (setq company-show-numbers t) ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
    (setq company-selection-wrap-around t)
    (setq company-transformers '(company-sort-by-occurrence)) ; 根据选择的频率进行排序，读者如果不喜欢可以去掉
    (setq company-backends '(company-capf
                              company-files
                              company-jedi
                              company-keywords
                              company-yasnippet))
)

(use-package company-jedi
  :ensure t
  :commands (company-jedi)
  :after (company python-mode))
;; 
(use-package company-box
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode)
)


;; ----------------------------------------------
;; 集成 flycheck 和更高级别的 UI 模块
;; ----------------------------------------------

;; ----------------------------------------------
;; 代码补全
;; ----------------------------------------------


(provide 'init-lsp)
