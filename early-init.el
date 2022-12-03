;; 通过减少垃圾的频率使启动速度更快, 触发垃圾收集的阀值
(setq gc-cons-threshold (* 100 1000 1000))
;; (setq gc-cons-threshold most-positive-fixnum)

