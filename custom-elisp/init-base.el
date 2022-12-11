;; coding
(prefer-coding-system 'utf-8)
(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")


;; 字体

(menu-bar-mode -1) ; 隐藏菜单栏
(tool-bar-mode -1) ; 隐藏工具栏
(scroll-bar-mode -1) ; 隐藏滚动条
(setq inhibit-startup-screen t) ; 隐藏欢迎页面

(setq display-line-numbers-type 'relative) ; 行号类型: relative(相对行号), visual, t
(setq make-backup-files nil)                 ; 关闭文件自动备份

(setq default-buffer-file-coding-system 'utf-8) ; 设置系统的编码
(prefer-coding-system 'utf-8) 
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(set-face-attribute 'default (selected-frame) :height 100) ; 设置字体大小

(global-display-line-numbers-mode t) ; 显示行号
(electric-pair-mode t) ; 自动补全括号
(show-paren-mode t) ; 括号匹配高亮
(column-number-mode t)                       ; 在 Mode line 上显示列号
(global-auto-revert-mode t)                  ; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)                    ; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(savehist-mode 1)                            ; 打开 Buffer 历史记录保存

(add-hook 'prog-mode-hook #'show-paren-mode) ; 编程模式下，光标在括号上时高亮另一个括号
(add-hook 'prog-mode-hook #'hs-minor-mode)   ; 编程模式下，可以折叠代码块

(defalias 'yes-or-no-p 'y-or-n-p) ; 用 y/n 来代替 yes/no




(provide 'init-base)

