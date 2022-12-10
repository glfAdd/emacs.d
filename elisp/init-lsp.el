;; ----------------------------------------------
;; company
;; ----------------------------------------------
(use-package company
    :ensure t
    :init (global-company-mode)
    :config
    (setq company-minimum-prefix-length 1) ; 只需敲 1 个字母就开始进行自动补全
    (setq company-tooltip-align-annotations t)
    (setq company-idle-delay 0.0)
    (setq company-show-numbers t) ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
    (setq company-selection-wrap-around t)
    (setq company-transformers '(company-sort-by-occurrence)) ; 根据选择的频率进行排序，读者如果不喜欢可以去掉
) 


(use-package company-box
    :if window-system
    :hook (company-mode . company-box-mode)
)


;; ----------------------------------------------
;; lsp
;; ----------------------------------------------
(use-package lsp-mode
    :init
    (setq lsp-keymap-prefix "C-c l" lsp-file-watch-threshold 500)
    :hook 
    (lsp-mode . lsp-enable-which-key-integration) ; which-key integration
    :commands
    lsp lsp-deferred
    :config
    (setq lsp-completion-provider :none) ; 阻止 lsp 重新设置 company-backend 而覆盖我们 yasnippet 的设置
    (setq lsp-headerline-breadcrumb-enable t)
    (setq lsp-idle-delay 0.6)
    (add-hook 'lsp-mode-hook 'lsp-ui-mode)
)

(use-package lsp-ui
    :config
    (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
    (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
    (setq lsp-ui-doc-position 'top)
    (setq lsp-ui-peek-always-show t)
    (setq lsp-ui-sideline-show-hover t)
    (setq lsp-ui-doc-enable nil)
)


(use-package lsp-ivy
    :ensure t
    :after (lsp-mode)
)


;; 语法检测
(use-package flycheck
    :ensure t
    :init (global-flycheck-mode)
)

(use-package pyvenv
  :ensure t
  :config
  (setenv "WORKON_HOME" "~/.pyenv/versions/p3710-emacs")
  (setq python-shell-interpreter "python3")
  (pyvenv-mode t))


(provide 'init-lsp)
