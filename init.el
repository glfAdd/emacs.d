; 添加配置路径
(add-to-list 'load-path (concat user-emacs-directory "custom-elisp"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'init-package)
(require 'init-base)

(require 'init-ui)
(require 'init-doom-modeline) ; 底部状态栏

;; ;; Displays the key bindings
;; (require 'init-which-key)

;; ;; Change window
;; (require 'init-window)

;; ;; tab change
;; (require 'init-tab)

;; ;; Undo list
;; (require 'init-undo-tree)

;; ;; File manger
;; (require 'init-filemanager)

;; ;; Evil 
;; ;(require 'init-vim)

;; ;; Emacs tool 
;; (require 'init-tool)

;; ;; Streamline the operation
;; (require 'init-ivy)

;; ;; 模糊搜索框架
;; (require 'init-search)

;; ;; unuse - find file in project
;; ; (require 'init-project)

;; ;; git
;; (require 'init-git)

;; ;; Code completion
;; (require 'init-lsp)
;; (require 'init-lsp-python)
;; (require 'init-lsp-java)

;; ;; Code debug
;; (require 'init-dap)
;; (require 'init-dap-python)
;; (require 'init-dap-java)

;; ;; language chekc (是不是已经安装了)
;; (require 'init-check)
;; (require 'init-check-python)
;; (require 'init-check-java)

;; ;; yasnippet
;; (require 'init-code-block)

;; ;; company
;; (require 'init-code-block)

;; ;; keymapping
;; (require 'init-keymapping)
