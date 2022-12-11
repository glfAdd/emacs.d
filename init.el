; 添加配置路径
(add-to-list 'load-path (concat user-emacs-directory "custom-elisp"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))


(require 'init-package)
(require 'init-base)
(require 'init-ui)
(require 'init-tool)
(require 'init-lsp)
;(require 'init-dap)
;(require 'init-keymapping)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ipython-shell-send python-mode elpy which-key use-package undo-tree neotree lsp-ui lsp-ivy gruvbox-theme flycheck doom-modeline dashboard dap-mode benchmark-init all-the-icons))
 '(warning-suppress-log-types '(((flymake flymake)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
