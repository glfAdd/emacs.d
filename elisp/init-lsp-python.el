; (use-package lsp-pyright
;   :hook (python-mode . (lambda ()
;                         (require 'lsp-pyright)
;                         (lsp-deferred)))
; )

; (use-package python-mode
;   :hook (python-mode . lsp-deferred)
;   :custom
;   (dap-python-debugger 'debugpy)
;   :config
;   (require 'dap-python)
; )

; (use-package lsp-python-ms
;   :ensure t
;   :hook (python-mode . (lambda ()
;                          (require 'lsp-python-ms)
;                          (lsp)))
;   :init
;   (setq lsp-python-ms-executable (executable-find "python-language-server"))
; )

; (use-package py-isort
;   :after python
;   :hook ((python-mode . pyvenv-mode)
;          (before-save . py-isort-before-save))
; )


; (use-package pyvenv
;   :after python-mode
;   :config
;   (pyvenv-mode 1)
; )

; (use-package blacken
;   :delight
;   :hook (python-mode . blacken-mode)
;   :custom (blacken-line-length 79)
; )

(provide 'init-lsp-python)
