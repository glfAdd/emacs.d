; 添加
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; Base configuration
(require 'init-base)

;; Theme
(require 'init-gruvbox-theme)

;; beautify mode-line
(require 'init-smart-mode-line)

;; displays the key bindings
(require 'init-which-key)

;; 
(require 'init-ace-window)

;; 
(require 'init-undo-tree)

;; 
(require 'init-neotree)

;; Evil 
;(require 'init-vim)

;; 
(require 'init-tool)

;; streamline the operation
(require 'init-ivy)

;; 
(require 'init-lsp)
(require 'init-lsp-python)
(require 'init-lsp-java)

(require 'init-dap)
(require 'init-dap-python)
(require 'init-dap-java)



; ; 全文补全框架
; (use-package company
;   :config
;   (global-company-mode t)
;   (setq company-idle-delay 0.3) ; 输入时, 代码补全延迟
;   (setq company-backends
;     '((company-files
;        company-keywords
;        company-capf
;        company-yasnippet
;        )
;       (company-abbrev company-dabbrev)))
; )





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(blacken pyvenv py-isort python-mode lsp-pyright which-key use-package undo-tree smart-mode-line neotree lsp-ui lsp-ivy gruvbox-theme dap-mode counsel benchmark-init)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
