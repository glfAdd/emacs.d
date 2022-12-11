;; ----------------------------------------------
;; company
;; ----------------------------------------------
(use-package company
    :init (global-company-mode)
    :config
    ; 只需敲 1 个字母就开始进行自动补全
    (setq company-minimum-prefix-length 1)
    (setq company-tooltip-align-annotations t)
    (setq company-idle-delay 0.2)
    ; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
    (setq company-show-numbers t)
    (setq company-selection-wrap-around t)
    ; 根据选择的频率进行排序，读者如果不喜欢可以去掉
    (setq company-transformers '(company-sort-by-occurrence))
;    (setq company-backends '(company-capf
;                            company-yasnippet
;                            ))
) 


(use-package company-box
    ;:if window-system
    :hook (company-mode . company-box-mode)
)



;; ----------------------------------------------
;; lsp
;; ----------------------------------------------
(use-package lsp-mode
    :init
    (setq lsp-keymap-prefix "C-c l" lsp-file-watch-threshold 500)
    :hook 
    ; which-key integration
    (lsp-mode . lsp-enable-which-key-integration)
    :commands
    lsp lsp-deferred
    :config
    ; 阻止 lsp 重新设置 company-backend 而覆盖我们 yasnippet 的设置
    (setq lsp-completion-provider :none)
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
    :after (lsp-mode)
)

;; 语法检测
(use-package flycheck
    :ensure t
    :init (global-flycheck-mode)
)



;; ----------------------------------------------
;; python
;; ----------------------------------------------
;(setq lsp-pyls-server-command "~/.local/bin/pyls")
;(setq lsp-pylsp-server-command "~/.local/bin/pylsp")
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred))) ; lsp-deferred lsp
)

;(use-package lsp-python-ms
;    :ensure t
;    :hook (python-mode . (lambda ()
;                            (require 'lsp-python-ms)
;                            (lsp)))
;    :init
;    (setq lsp-python-ms-executable (executable-find "python-language-server"))
;)

;(use-package python-mode
;    :hook (python-mode . lsp-deferred)
;    :custom
;    (dap-python-debugger 'debugpy)
;    :config
;    (require 'dap-python)
;)

;(use-package py-isort
;    :after python
;    :hook ((python-mode . pyvenv-mode)
;    (before-save . py-isort-before-save))
;)

;(use-package pyvenv
;    :after python-mode
;    :config
;    (pyvenv-mode 1)
;)

;; python 虚拟环境切换管理
(use-package pyvenv
    :init
    (setenv "WORKON_HOME" "~/.pyenv/versions")


    ;:config
    ;(setenv "WORKON_HOME" "~/.pyenv/versions")
    ;(setq python-shell-interpreter "python3")
    ;(pyvenv-mode t)
)

;(use-package blacken
;    :delight
;    :hook (python-mode . blacken-mode)
;    :custom (blacken-line-length 79)
;)

;; ----------------------------------------------
;; c
;; ----------------------------------------------

;; ----------------------------------------------
;; go
;; ----------------------------------------------


(provide 'init-lsp)
