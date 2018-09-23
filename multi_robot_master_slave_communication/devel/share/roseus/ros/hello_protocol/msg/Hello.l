;; Auto-generated. Do not edit!


(when (boundp 'hello_protocol::Hello)
  (if (not (find-package "HELLO_PROTOCOL"))
    (make-package "HELLO_PROTOCOL"))
  (shadow 'Hello (find-package "HELLO_PROTOCOL")))
(unless (find-package "HELLO_PROTOCOL::HELLO")
  (make-package "HELLO_PROTOCOL::HELLO"))

(in-package "ROS")
;;//! \htmlinclude Hello.msg.html


(defclass hello_protocol::Hello
  :super ros::object
  :slots (_Hello_from_Robot1 ))

(defmethod hello_protocol::Hello
  (:init
   (&key
    ((:Hello_from_Robot1 __Hello_from_Robot1) "")
    )
   (send-super :init)
   (setq _Hello_from_Robot1 (string __Hello_from_Robot1))
   self)
  (:Hello_from_Robot1
   (&optional __Hello_from_Robot1)
   (if __Hello_from_Robot1 (setq _Hello_from_Robot1 __Hello_from_Robot1)) _Hello_from_Robot1)
  (:serialization-length
   ()
   (+
    ;; string _Hello_from_Robot1
    4 (length _Hello_from_Robot1)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Hello_from_Robot1
       (write-long (length _Hello_from_Robot1) s) (princ _Hello_from_Robot1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Hello_from_Robot1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Hello_from_Robot1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hello_protocol::Hello :md5sum-) "e8916ac80101a481b96c0cfdc1217c9f")
(setf (get hello_protocol::Hello :datatype-) "hello_protocol/Hello")
(setf (get hello_protocol::Hello :definition-)
      "string Hello_from_Robot1

")



(provide :hello_protocol/Hello "e8916ac80101a481b96c0cfdc1217c9f")


