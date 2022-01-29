; 添加配置路径
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; Base configuration
(require 'init-base)

;; icon
(require 'init-icon)

;; Theme
(require 'init-theme)

;; Welcome dashboard
(require 'init-dashboard)

;; beautify mode line
(require 'init-mode-line)

;; Displays the key bindings
(require 'init-which-key)

;; Change window
(require 'init-window)

;; tab change
(require 'init-tab)

;; Undo list
(require 'init-undo-tree)

;; File manger
(require 'init-filemanager)

;; Evil 
;(require 'init-vim)

;; Emacs tool 
(require 'init-tool)

;; Streamline the operation
(require 'init-ivy)

;; 模糊搜索框架
(require 'init-search)

;; git
(require 'init-git)

;; Code completion
(require 'init-lsp)
(require 'init-lsp-python)
(require 'init-lsp-java)

;; Code debug
(require 'init-dap)
(require 'init-dap-python)
(require 'init-dap-java)

;; language chekc (是不是已经安装了)
(require 'init-check)
(require 'init-check-python)
(require 'init-check-java)

;; yasnippet
(require 'init-code-block)

;; company
(require 'init-code-block)

;; keymapping
(require 'init-keymapping)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(dashboard which-key use-package undo-tree smart-mode-line pyvenv python-mode py-isort neotree lsp-ui lsp-python-ms lsp-pyright lsp-ivy gruvbox-theme dap-mode counsel blacken benchmark-init)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
