
(cl:in-package :asdf)

(defsystem "sirius2std-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "IMU" :depends-on ("_package_IMU"))
    (:file "_package_IMU" :depends-on ("_package"))
  ))