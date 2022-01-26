; 添加
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; Base configuration
(require 'base)

;; Theme
(require 'theme)

;; beautify mode-line
(require 'mode-line)

;; displays the key bindings
(require 'key-mapping-bingd)

;; 
(require 'ace-window)

;; 
(require 'action-undo-tree)

;; 
(require 'file-tree)

;; Evil 
;(require 'vim)

;; 
(require 'tool)

;; streamline the operation
(require 'flexible-action)

;; 
(require 'lsp-completion)


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


; (use-package lsp-pyright
;   :hook (python-mode . (lambda ()
;                         (require 'lsp-pyright)
;                         (lsp-deferred))))
; (use-package python-mode
;   :hook (python-mode . lsp-deferred)
;   :custom
;   (dap-python-debugger 'debugpy)
;   :config
;   (require 'dap-python))

; (use-package pyvenv
;   :after python-mode
;   :config
;   (pyvenv-mode 1))

; (use-package py-isort
;   :after python
;   :hook ((python-mode . pyvenv-mode)
;          (before-save . py-isort-before-save)))

; (use-package blacken
;   :delight
;   :hook (python-mode . blacken-mode)
;   :custom (blacken-line-length 79))



(require 'dap-python)


(dap-register-debug-template "frontend-graphql"
                             (list :type "python"
                                   :program "run" ;; this due to the insistence of dap-debug of populating this one with the current file, adding :flask t did nothing for this value.
                                   :module "flask"
;                                   :args "--no-debugger --no-reload"
                                   :cwd "~/Desktop/learn/python"
                                   :request "launch"
                                   :environment-variables '(
                                                            ("FLASK_APP" . "aaaa.py")
                                                            ("FLASK_ENV" . "development")
                                                            ("FLASK_DEBUG" . "0"))
                                   :name "Python :: flask-graphql"
                                   :hostName "localhost"
                                   :host "localhost"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(evil which-key use-package undo-tree smart-mode-line pyvenv python-mode python-black pyenv-mode py-isort neotree lsp-ui lsp-pyright lsp-ivy gruvbox-theme good-scroll flycheck dashboard dap-mode company blacken benchmark-init)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
