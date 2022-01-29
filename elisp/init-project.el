;; 项目搜索

(use-package find-file-in-project
  :init
  :config
  (ivy-mode 1)
)

(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)

(provide 'init-project)

