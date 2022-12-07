;; 通过减少垃圾的频率使启动速度更快, 触发垃圾收集的阀值
(setq gc-cons-threshold (* 100 1000 1000))
;; (setq gc-cons-threshold most-positive-fixnum)

;; 增大同LSP服务器交互时的读取文件的大小
(setq read-process-output-max (* 1024 1024 128)) ; 128MB
