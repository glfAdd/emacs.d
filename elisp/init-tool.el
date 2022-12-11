;;; ----------------------------------------------
;;; 测试启动耗时 (不正常)
;;; ----------------------------------------------
;(use-package benchmark-init 
;    :config
;    ;(add-hook 'after-init-hook 'benchmark-init/deactivate) ; 禁用
;    (add-hook 'after-init-hook 'benchmark-init/activate) ; 启动
;)



;;; ----------------------------------------------
;;; vi layer for Emacs
;;; ----------------------------------------------
;(use-package evil
;    :init
;    (setq evil-vsplit-window-right t)
;    (setq evil-split-window-below t)
;    (setq evil-want-C-u-scroll t)
;    (setq evil-want-C-i-jump nil)
;    :config
;    (evil-mode 1)
;)



;; ----------------------------------------------
;; 文件目录
;; ----------------------------------------------
(use-package neotree
    :config
    (neo-theme 'nerd2) ; 图标样式
    (setq neo-smart-open t)
    (setq neo-theme (if (display-graphic-p) 'icons 'nerd))
    (setq neo-window-fixed-size nil)
    (setq-default neo-show-hidden-files nil) ; 默认不显示隐藏文件
    (global-set-key [f2] 'neotree-toggle)
    (global-set-key [f8] 'neotree-dir)
)



;; ----------------------------------------------
;; 底部状态栏
;; ----------------------------------------------
(use-package doom-modeline
    ; :init (doom-modeline-mode 1)
    :hook (after-init . doom-modeline-mode)
    :config
    (setq doom-modeline-height 45) ; 高度
    (setq doom-modeline-bar-width 4) ; 宽度
    (setq doom-modeline-icon t)
    (setq doom-modeline-buffer-state-icon t)
)



;; ----------------------------------------------
;; 快捷键提示
;; ----------------------------------------------
(use-package which-key
    :config
    (which-key-mode)
    (setq which-key-idle-delay 1)
    (setq which-key-popup-type 'side-window) ; minibuffer minibuffer minibuffer
    (setq which-key-side-window-location 'bottom) ; left right bottom
    (setq which-key-side-window-max-width 0.33)
    (setq which-key-side-window-max-height 0.25)
    (setq which-key-frame-max-width 60)
    (setq which-key-frame-max-height 20)
    (setq which-key-idle-delay 0.8)
    (setq which-key-max-description-length 27) ; 命令最大宽度
)



;; ----------------------------------------------
;; window 跳转
;; ----------------------------------------------
(use-package ace-window
;    :config
;    (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
;    :bind (("C-x o" . 'ace-window))
)



;;; ----------------------------------------------
;;; tab 切换状态栏
;;; ----------------------------------------------
;(global-tab-line-mode t)
;(setq tab-line-new-button-show nil)  ;; show add-new button
;(setq tab-line-close-button-show nil)  ;; show close button
;(setq tab-line-separator "")  ;; set it to empty, nil is "|"

(use-package centaur-tabs
    :config
    (centaur-tabs-mode t)
    (setq centaur-tabs-style "bar")
    (setq centaur-tabs-height 32)
    (setq centaur-tabs-set-bar 'under) ; 打开标记下划线
    (setq x-underline-at-descent-line t)
)


;(use-package centaur-tabs
;    :config
;    (setq
;        ; centaur-tabs-style "bar"
;        ; centaur-tabs-height 32
;        ; centaur-tabs-set-icons t
;        centaur-tabs-set-modified-marker t
;        ; centaur-tabs-show-navigation-buttons t
;        centaur-tabs-set-bar 'under
;        x-underline-at-descent-line t)
;    ; (centaur-tabs-headline-match)
;    ;; (setq centaur-tabs-gray-out-icons 'buffer)
;    ;; (centaur-tabs-enable-buffer-reordering)
;    ;; (setq centaur-tabs-adjust-buffer-order t)
;    (centaur-tabs-mode t)
;    (setq uniquify-separator "/")
;    (setq uniquify-buffer-name-style 'forward)
;    (defun centaur-tabs-buffer-groups ()
;        (list
;        (cond
;        ;; ((not (eq (file-remote-p (buffer-file-name)) nil))
;        ;; "Remote")
;        ((or (string-equal "*" (substring (buffer-name) 0 1))
;            (memq major-mode '(magit-process-mode
;                    magit-status-mode
;                    magit-diff-mode
;                    magit-log-mode
;                    magit-file-mode
;                    magit-blob-mode
;                    magit-blame-mode
;                    )))
;        "Emacs")
;        ((derived-mode-p 'prog-mode)
;        "Editing")
;        ((derived-mode-p 'dired-mode)
;        "Dired")
;        ((memq major-mode '(helpful-mode
;                    help-mode))
;        "Help")
;        ((memq major-mode '(org-mode
;                    org-agenda-clockreport-mode
;                    org-src-mode
;                    org-agenda-mode
;                    org-beamer-mode
;                    org-indent-mode
;                    org-bullets-mode
;                    org-cdlatex-mode
;                    org-agenda-log-mode
;                    diary-mode))
;        "OrgMode")
;        (t
;        (centaur-tabs-get-group-name (current-buffer))))))
;    :hook
;    (dashboard-mode . centaur-tabs-local-mode)
;    (term-mode . centaur-tabs-local-mode)
;    (calendar-mode . centaur-tabs-local-mode)
;    (org-agenda-mode . centaur-tabs-local-mode)
;    (helpful-mode . centaur-tabs-local-mode)
;    :bind
;    ("C-<prior>" . centaur-tabs-backward)
;    ("C-<next>" . centaur-tabs-forward)
;    ("C-c t s" . centaur-tabs-counsel-switch-group)
;    ("C-c t p" . centaur-tabs-group-by-projectile-project)
;    ("C-c t g" . centaur-tabs-group-buffer-groups)
;    ; (:map evil-normal-state-map
;    ;    ("g t" . centaur-tabs-forward)
;    ;    ("g T" . centaur-tabs-backward))
;)



;;; ----------------------------------------------
;;; 补全系统
;;; ----------------------------------------------
;(use-package ivy
;  ;; :diminish ivy-mode
;  ;; :hook (after-init . ivy-mode)
;  :init
;    ;; (ivy-mode 1)
;    ;; (counsel-mode 1)
;  :config
;  (setq ivy-height 15) ;; 缓冲区高度
;  (setq ivy-count-format "%d/%d") ;; 匹配总量统计
;  (setq ivy-re-builders-alist ;; 模糊查询
;      '((t . ivy--regex-plus)))
;
;  ; (setq ivy-fzf-path ':)
;  ;;(setq ivy-use-virutal-buffers t)
;  ;;(setq ivy-initial-inputs-alist nil)
;)
;
;
;;; ----------------------------------------------
;;; 部分常用功能
;;; ----------------------------------------------
;(use-package counsel
;  :bind
;  ; ("M-x" . counsel-M-x)
;  ; ("C-x C-m" . counsel-M-x)
;  ; ("C-x C-f" . counsel-find-file)
;  ; ("C-x c k" . counsel-yank-pop)
;)
;
;
;;; ----------------------------------------------
;;; 搜索功能
;;; ----------------------------------------------
;;; 文件中搜索
;(use-package swiper
;  :bind
;  ; ("C-s" . swiper)
;  ; ("C-x s" . swiper)
;  ; ("C-x C-r" . ivy-resume)
;)
;
;
;
;;; ----------------------------------------------
;;; 模糊搜索框架
;;; ----------------------------------------------
;; (use-package snails-core
;;     :init
;; )
;
;
;
;
;;; ----------------------------------------------
;;; 项目搜索
;;; ----------------------------------------------
;(use-package find-file-in-project
;  :init
;  :config
;  (ivy-mode 1)
;)
;(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
;
;
;;; ----------------------------------------------
;;; 撤销命令树
;;; ----------------------------------------------
;(use-package undo-tree
;  :init (global-undo-tree-mode)
;)
;
;
;
;
;;; ----------------------------------------------
;;; git
;;; ----------------------------------------------
;; (use-package magit
;;   :config
;;   (setq magit-completing-read-function 'ivy-completing-read)
;;   :bind
;;   ;; Magic
;;   ("C-x g s" . magit-status)
;;   ("C-x g x" . magit-checkout)
;;   ("C-x g c" . magit-commit)
;;   ("C-x g p" . magit-push)
;;   ("C-x g u" . magit-pull)
;;   ("C-x g e" . magit-ediff-resolve)
;;   ("C-x g r" . magit-rebase-interactive)
;; )
;; (use-package magit-popup)
;
;
;
;;; ----------------------------------------------
;;; avy
;;; ----------------------------------------------
;(use-package avy
;  :bind
;    ;; (("C-j C-SPC" . avy-goto-char-timer))
;)
;
;


(provide 'init-tool)
