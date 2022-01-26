(setq package-archives '( ; 添加源
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))
)


(setq package-check-signature nil) ; 签名校验
(require 'package) ; 初始化包管理器

(package-initialize)
(package-refresh-contents)
; (unless (bound-and-true-p package--initialized)
;     (package-initialize)
; )
; (unless package-archive-contents ; 刷新软件源
;     (package-refresh-contents)
; )


(unless (package-installed-p 'use-package) ; 使用 use-package 管理扩展
    (package-refresh-contents) 
    (package-install 'use-package)
)

(eval-and-compile ; use-package 全局设置
    (setq use-package-always-ensure t)
    (setq use-package-always-defer t)
    (setq use-package-always-demand nil) 
    (setq use-package-expand-minimally t) 
    (setq use-package-verbose t)
)

(require 'use-package)


(use-package gruvbox-theme ; 主题
    :init (load-theme 'gruvbox-dark-soft t)
)


(use-package smart-mode-line ; 底部状态栏
    :init 
    (setq sml/no-confirm-load-theme t) 
    (setq sml/theme 'respectful) 
    (sml/setup)
)


(use-package benchmark-init ; 测试启动耗时
  :init (benchmark-init/activate) 
  :hook (after-init . benchmark-init/deactivate)
)


(use-package which-key ; 快捷键提示
  :defer nil 
  :config 
  (which-key-mode)
)


(use-package ace-window ; window 跳转
  :bind (("C-x o" . 'ace-window))
)


(use-package undo-tree ; 撤销命令树
  :init (global-undo-tree-mode)
)


(use-package neotree ; 文件目录
  :init
  :custom
  (neo-theme 'nerd2)
  :config
  (progn
    (setq neo-smart-open t)
    (setq neo-theme (if (display-graphic-p) 'icons 'nerd))
    (setq neo-window-fixed-size nil)
    ;; (setq-default neo-show-hidden-files nil)
    (global-set-key [f2] 'neotree-toggle)
    (global-set-key [f8] 'neotree-dir))
)


(use-package lsp-mode ; Emacs 下 LSP 协议库
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  ((python-mode . lsp))
)

(use-package lsp-ui 
  :init
  :config
  (setq lsp-ui-sideline-delay 0.1) ; 在显示边线之前等待几秒钟
  :commands 
  lsp-ui-mode
)

(use-package lsp-ivy ; 补全系统、部分常用命令、搜索功能
  :init
  :commands 
  lsp-ivy-workspace-symbol
)

(use-package lsp-treemacs 
  :init
  :commands 
  lsp-treemacs-errors-list
)


; 全文补全框架
(use-package company
  :config
  (global-company-mode t)
  (setq company-idle-delay 0.3) ; 输入时, 代码补全延迟
  (setq company-backends
    '((company-files
       company-keywords
       company-capf
       company-yasnippet
       )
      (company-abbrev company-dabbrev)))

)


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

; (dap-register-debug-template "My flask"
;   (list :type "python"
;         :jinja t
;         :module "flask"
;         :request "launch"
;         :env '(
;                ("PYTHONPATH" . "/home/glfadd/.pyenv/versions/p-3.9.2-learn")
;                ("FLASK_APP" . "./aaaa.py")
;                ("FLASK_ENV" . "development")
;                )
;         :name "My flask")

; )
; (use-package dap-mode
; )

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



