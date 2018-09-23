;; Auto-generated. Do not edit!


(when (boundp 'hello_protocol::Wave)
  (if (not (find-package "HELLO_PROTOCOL"))
    (make-package "HELLO_PROTOCOL"))
  (shadow 'Wave (find-package "HELLO_PROTOCOL")))
(unless (find-package "HELLO_PROTOCOL::WAVE")
  (make-package "HELLO_PROTOCOL::WAVE"))
(unless (find-package "HELLO_PROTOCOL::WAVEREQUEST")
  (make-package "HELLO_PROTOCOL::WAVEREQUEST"))
(unless (find-package "HELLO_PROTOCOL::WAVERESPONSE")
  (make-package "HELLO_PROTOCOL::WAVERESPONSE"))

(in-package "ROS")





(defclass hello_protocol::WaveRequest
  :super ros::object
  :slots (_waving ))

(defmethod hello_protocol::WaveRequest
  (:init
   (&key
    ((:waving __waving) "")
    )
   (send-super :init)
   (setq _waving (string __waving))
   self)
  (:waving
   (&optional __waving)
   (if __waving (setq _waving __waving)) _waving)
  (:serialization-length
   ()
   (+
    ;; string _waving
    4 (length _waving)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _waving
       (write-long (length _waving) s) (princ _waving s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _waving
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _waving (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hello_protocol::WaveResponse
  :super ros::object
  :slots (_waving_back ))

(defmethod hello_protocol::WaveResponse
  (:init
   (&key
    ((:waving_back __waving_back) "")
    )
   (send-super :init)
   (setq _waving_back (string __waving_back))
   self)
  (:waving_back
   (&optional __waving_back)
   (if __waving_back (setq _waving_back __waving_back)) _waving_back)
  (:serialization-length
   ()
   (+
    ;; string _waving_back
    4 (length _waving_back)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _waving_back
       (write-long (length _waving_back) s) (princ _waving_back s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _waving_back
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _waving_back (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hello_protocol::Wave
  :super ros::object
  :slots ())

(setf (get hello_protocol::Wave :md5sum-) "e4fbbf8de027480172f47df2390f2c22")
(setf (get hello_protocol::Wave :datatype-) "hello_protocol/Wave")
(setf (get hello_protocol::Wave :request) hello_protocol::WaveRequest)
(setf (get hello_protocol::Wave :response) hello_protocol::WaveResponse)

(defmethod hello_protocol::WaveRequest
  (:response () (instance hello_protocol::WaveResponse :init)))

(setf (get hello_protocol::WaveRequest :md5sum-) "e4fbbf8de027480172f47df2390f2c22")
(setf (get hello_protocol::WaveRequest :datatype-) "hello_protocol/WaveRequest")
(setf (get hello_protocol::WaveRequest :definition-)
      "string waving
---
string waving_back

")

(setf (get hello_protocol::WaveResponse :md5sum-) "e4fbbf8de027480172f47df2390f2c22")
(setf (get hello_protocol::WaveResponse :datatype-) "hello_protocol/WaveResponse")
(setf (get hello_protocol::WaveResponse :definition-)
      "string waving
---
string waving_back

")



(provide :hello_protocol/Wave "e4fbbf8de027480172f47df2390f2c22")


