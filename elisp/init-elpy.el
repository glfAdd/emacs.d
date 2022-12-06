;; ----------------------------------------------
;; python 开发环境
;; ----------------------------------------------


;; (use-package elpy
;;   :init
;;   (advice-add 'python-mode :before 'elpy-enable)
;; )


(use-package python-mode
  :mode (("SConstruct\\'" . python-mode)
         ("SConscript\\'" . python-mode)
         ("\\.py\\'"      . python-mode))
  :config
  (use-package elpy
    :init
    (advice-add 'python-mode :before 'elpy-enable)
    ;; (elpy-enable)
    (elpy-use-ipython)
    ;; use flycheck not flymake with elpy
    (when (require 'flycheck nil t)
      (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
      (add-hook 'elpy-mode-hook 'flycheck-mode)))
)


;; (use-package elpy
;;   :init
;;   (elpy-enable)
;;   (advice-add 'python-mode :before 'elpy-enable)
;;   :hook
;;   (elpy-mode . flycheck-mode) ;; 添加flycheck, 替换flymake
;;   :config
;;   (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;; )


(provide 'init-elpy)