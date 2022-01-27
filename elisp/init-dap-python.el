(dap-register-debug-template "python flask"
   (list :type "python"
         :program "run" ;; this due to the insistence of dap-debug of populating this one with the current file, adding :flask t did nothing for this value.
         :module "flask"
;                                 :args "--no-debugger --no-reload"
         :cwd "~/Desktop/learn/python"
         :request "launch"
         :environment-variables '(
                                  ("FLASK_APP" . "aaaa.py")
                                  ("FLASK_ENV" . "development")
                                  ("FLASK_DEBUG" . "0"))
         :name "Python Flask"
         :hostName "localhost"
         :host "localhost"))

(provide 'init-dap-python)
