
(cl:in-package :asdf)

(defsystem "myrobot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Twist" :depends-on ("_package_Twist"))
    (:file "_package_Twist" :depends-on ("_package"))
    (:file "Twist" :depends-on ("_package_Twist"))
    (:file "_package_Twist" :depends-on ("_package"))
    (:file "Vector3" :depends-on ("_package_Vector3"))
    (:file "_package_Vector3" :depends-on ("_package"))
    (:file "Vector3" :depends-on ("_package_Vector3"))
    (:file "_package_Vector3" :depends-on ("_package"))
  ))