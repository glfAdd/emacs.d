(use-package company
  :init
  :config
  (setq company-backends '(company-capf
                           company-yasnippet
                           ))
)

(provide 'init-complete)
