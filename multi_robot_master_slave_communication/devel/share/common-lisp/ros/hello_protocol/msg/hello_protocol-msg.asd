
(cl:in-package :asdf)

(defsystem "hello_protocol-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Hello" :depends-on ("_package_Hello"))
    (:file "_package_Hello" :depends-on ("_package"))
  ))