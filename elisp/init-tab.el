;; tab 切换状态栏


(global-tab-line-mode t)
(setq tab-line-new-button-show nil)  ;; show add-new button
(setq tab-line-close-button-show nil)  ;; show close button
(setq tab-line-separator "")  ;; set it to empty, nil is "|"



; (use-package centaur-tabs
;   :init
;   :config
;   (centaur-tabs-mode t)
;   (setq centaur-tabs-style "bar")
;   (setq centaur-tabs-height 32)
;   (setq centaur-tabs-set-bar 'under) ; 打开标记下划线
;   (setq x-underline-at-descent-line t)
; )


;  (use-package centaur-tabs
;    :config
;    :init
;    (setq
;      ; centaur-tabs-style "bar"
;       ; centaur-tabs-height 32
;       ; centaur-tabs-set-icons t
;       centaur-tabs-set-modified-marker t
;       ; centaur-tabs-show-navigation-buttons t
;       centaur-tabs-set-bar 'under
;       x-underline-at-descent-line t)
;    ; (centaur-tabs-headline-match)
;    ;; (setq centaur-tabs-gray-out-icons 'buffer)
;    ;; (centaur-tabs-enable-buffer-reordering)
;    ;; (setq centaur-tabs-adjust-buffer-order t)
;    (centaur-tabs-mode t)
;    (setq uniquify-separator "/")
;    (setq uniquify-buffer-name-style 'forward)
;    (defun centaur-tabs-buffer-groups ()
;      "`centaur-tabs-buffer-groups' control buffers' group rules.

;  Group centaur-tabs with mode if buffer is derived from `eshell-mode' `emacs-lisp-mode' `dired-mode' `org-mode' `magit-mode'.
;  All buffer name start with * will group to \"Emacs\".
;  Other buffer group by `centaur-tabs-get-group-name' with project name."
;      (list
;       (cond
;     ;; ((not (eq (file-remote-p (buffer-file-name)) nil))
;     ;; "Remote")
;     ((or (string-equal "*" (substring (buffer-name) 0 1))
;          (memq major-mode '(magit-process-mode
;                 magit-status-mode
;                 magit-diff-mode
;                 magit-log-mode
;                 magit-file-mode
;                 magit-blob-mode
;                 magit-blame-mode
;                 )))
;      "Emacs")
;     ((derived-mode-p 'prog-mode)
;      "Editing")
;     ((derived-mode-p 'dired-mode)
;      "Dired")
;     ((memq major-mode '(helpful-mode
;                 help-mode))
;      "Help")
;     ((memq major-mode '(org-mode
;                 org-agenda-clockreport-mode
;                 org-src-mode
;                 org-agenda-mode
;                 org-beamer-mode
;                 org-indent-mode
;                 org-bullets-mode
;                 org-cdlatex-mode
;                 org-agenda-log-mode
;                 diary-mode))
;      "OrgMode")
;     (t
;      (centaur-tabs-get-group-name (current-buffer))))))
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
; )
(provide 'init-tab)
