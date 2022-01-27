; 添加配置路径
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; Base configuration
(require 'init-base)

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

;; Undo list
(require 'init-undo-tree)

;; File manger
(require 'init-file-manager)

;; Evil 
;(require 'init-vim)

;; Emacs tool 
(require 'init-tool)

;; Streamline the operation
(require 'init-ivy)

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




