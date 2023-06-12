;; Auto-generated. Do not edit!


(when (boundp 'myrobot::Twist)
  (if (not (find-package "MYROBOT"))
    (make-package "MYROBOT"))
  (shadow 'Twist (find-package "MYROBOT")))
(unless (find-package "MYROBOT::TWIST")
  (make-package "MYROBOT::TWIST"))

(in-package "ROS")
;;//! \htmlinclude Twist.msg.html


(defclass myrobot::Twist
  :super ros::object
  :slots (_linear _angular ))

(defmethod myrobot::Twist
  (:init
   (&key
    ((:linear __linear) (instance myrobot::Vector3 :init))
    ((:angular __angular) (instance myrobot::Vector3 :init))
    )
   (send-super :init)
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; myrobot/Vector3 _linear
    (send _linear :serialization-length)
    ;; myrobot/Vector3 _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; myrobot/Vector3 _linear
       (send _linear :serialize s)
     ;; myrobot/Vector3 _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; myrobot/Vector3 _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; myrobot/Vector3 _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get myrobot::Twist :md5sum-) "9f195f881246fdfa2798d1d3eebca84a")
(setf (get myrobot::Twist :datatype-) "myrobot/Twist")
(setf (get myrobot::Twist :definition-)
      "Vector3  linear
Vector3  angular
================================================================================
MSG: myrobot/Vector3
float64 x
float64 y
float64 z
")



(provide :myrobot/Twist "9f195f881246fdfa2798d1d3eebca84a")


