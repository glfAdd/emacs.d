;; ----------------------------------------------
;; lsp: 集成代码开发环境
;; ----------------------------------------------

;; python 自动
(setq lsp-pyls-server-command "~/.local/bin/pyls")			
(setq lsp-pylsp-server-command "~/.local/bin/pylsp")			


;; ----------------------------------------------
;; lsp: 集成代码开发环境
;; ----------------------------------------------
(use-package lsp-mode
  :hook
    (python-mode . lsp-deferred) ; 表示启用 python-mode 时调用 lsp, 延迟加载
  :commands 
    lsp
)


;; ----------------------------------------------
;; 集成 flycheck 和更高级别的 UI 模块
;; ----------------------------------------------
(use-package lsp-ui
  :ensure t
  :custom-face
  (lsp-ui-doc-background ((t (:background ni))))
  :init (setq lsp-ui-doc-enable t
              lsp-ui-doc-include-signature t               

              lsp-enable-snippet nil
              lsp-ui-sideline-enable nil
              lsp-ui-peek-enable nil

              lsp-ui-doc-position              'at-point
              lsp-ui-doc-header                nil
              lsp-ui-doc-border                "white"
              lsp-ui-doc-include-signature     t
              lsp-ui-sideline-update-mode      'point
              lsp-ui-sideline-delay            1
              lsp-ui-sideline-ignore-duplicate t
              lsp-ui-peek-always-show          t
              lsp-ui-flycheck-enable           nil
              )
  :bind (:map lsp-ui-mode-map
              ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
              ([remap xref-find-references] . lsp-ui-peek-find-references)
              ("C-c u" . lsp-ui-imenu))
  :config
  (setq lsp-ui-sideline-ignore-duplicate t)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))


;; ----------------------------------------------
;; 代码补全
;; ----------------------------------------------
(use-package company-lsp
    :config
    ;; 设置 company-lsp 为后端
    (push 'company-lsp company-backends))


(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)





(provide 'init-lsp)
