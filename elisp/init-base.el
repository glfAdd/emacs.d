(push '(menu-bar-lines . 0) default-frame-alist) ; 隐藏菜单栏
(push '(tool-bar-lines . 0) default-frame-alist) ; 隐藏工具栏
(push '(vertical-scroll-bars) default-frame-alist) ; 隐藏滚动条
(setq inhibit-startup-screen t) ; 关闭启动界面
;(setq frame-inhibit-implied-resize t) ; 禁止改变 frame 大小
(setq display-line-numbers-type 'relative) ; 行号类型: relative(相对行号), visual, t
(setq make-backup-files nil)                 ; 关闭文件自动备份
(setq default-buffer-file-coding-system 'utf-8)
(setq gc-cons-threshold most-positive-fixnum) ; 设置垃圾回收阈值, 加速启动速度

(global-display-line-numbers-mode t) ; 显示行号
(electric-pair-mode t) ; 自动补全括号
(show-paren-mode t) ; 括号匹配高亮
(prefer-coding-system 'utf-8) ; 设置系统的编码
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(column-number-mode t)                       ; 在 Mode line 上显示列号
(global-auto-revert-mode t)                  ; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)                    ; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(savehist-mode 1)                            ; 打开 Buffer 历史记录保存

(add-hook 'prog-mode-hook #'show-paren-mode) ; 编程模式下，光标在括号上时高亮另一个括号
(add-hook 'prog-mode-hook #'hs-minor-mode)   ; 编程模式下，可以折叠代码块


;; 添加源
(setq package-archives '( 
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))
)


(setq package-check-signature nil) ; 签名校验
(require 'package) ; 初始化包管理器

; (package-initialize)
; (package-refresh-contents)
(unless (bound-and-true-p package--initialized)
    (package-initialize)
)
(unless package-archive-contents ; 刷新软件源
    (package-refresh-contents)
)


;; 使用 use-package 管理扩展
(unless (package-installed-p 'use-package) 
    (package-refresh-contents) 
    (package-install 'use-package)
)

;; use-package 全局设置
(eval-and-compile 
    (setq use-package-always-ensure t)
    (setq use-package-always-defer t)
    (setq use-package-always-demand nil) 
    (setq use-package-expand-minimally t) 
    (setq use-package-verbose t)
)
(require 'use-package)


(provide 'init-base)



