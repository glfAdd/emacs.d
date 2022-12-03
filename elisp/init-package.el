;; ----------------------------------------------
;; 添加源
;; ----------------------------------------------
(setq package-check-signature nil) ; 禁用签名校验
(setq package-archives '( 
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))
)
;; 初始化包管理器
(require 'package) 
(unless (bound-and-true-p package--initialized)
    (package-initialize))
;; 刷新软件源
(unless package-archive-contents 
    (package-refresh-contents))


;; ----------------------------------------------
;; 使用 use-package 管理扩展
;; ----------------------------------------------
(unless (package-installed-p 'use-package) 
    (package-refresh-contents) 
    (package-install 'use-package))
;; use-package 全局设置, 安装时不用每次都设置
(eval-and-compile 
    (setq use-package-always-ensure t)
    (setq use-package-always-defer t)
    (setq use-package-always-demand nil) 
    (setq use-package-expand-minimally t) 
    (setq use-package-verbose t))
(require 'use-package)


(provide 'init-package)