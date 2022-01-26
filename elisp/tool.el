;; 工具


; 测试启动耗时
(use-package benchmark-init 
  :init (benchmark-init/activate) 
  :hook (after-init . benchmark-init/deactivate)
)


(provide 'tool)
