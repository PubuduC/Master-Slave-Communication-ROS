
(cl:in-package :asdf)

(defsystem "hello_protocol-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Connection" :depends-on ("_package_Connection"))
    (:file "_package_Connection" :depends-on ("_package"))
  ))