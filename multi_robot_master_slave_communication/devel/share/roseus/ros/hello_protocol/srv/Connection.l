;; Auto-generated. Do not edit!


(when (boundp 'hello_protocol::Connection)
  (if (not (find-package "HELLO_PROTOCOL"))
    (make-package "HELLO_PROTOCOL"))
  (shadow 'Connection (find-package "HELLO_PROTOCOL")))
(unless (find-package "HELLO_PROTOCOL::CONNECTION")
  (make-package "HELLO_PROTOCOL::CONNECTION"))
(unless (find-package "HELLO_PROTOCOL::CONNECTIONREQUEST")
  (make-package "HELLO_PROTOCOL::CONNECTIONREQUEST"))
(unless (find-package "HELLO_PROTOCOL::CONNECTIONRESPONSE")
  (make-package "HELLO_PROTOCOL::CONNECTIONRESPONSE"))

(in-package "ROS")





(defclass hello_protocol::ConnectionRequest
  :super ros::object
  :slots (_connection_request ))

(defmethod hello_protocol::ConnectionRequest
  (:init
   (&key
    ((:connection_request __connection_request) "")
    )
   (send-super :init)
   (setq _connection_request (string __connection_request))
   self)
  (:connection_request
   (&optional __connection_request)
   (if __connection_request (setq _connection_request __connection_request)) _connection_request)
  (:serialization-length
   ()
   (+
    ;; string _connection_request
    4 (length _connection_request)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _connection_request
       (write-long (length _connection_request) s) (princ _connection_request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _connection_request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _connection_request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hello_protocol::ConnectionResponse
  :super ros::object
  :slots (_connection_response ))

(defmethod hello_protocol::ConnectionResponse
  (:init
   (&key
    ((:connection_response __connection_response) "")
    )
   (send-super :init)
   (setq _connection_response (string __connection_response))
   self)
  (:connection_response
   (&optional __connection_response)
   (if __connection_response (setq _connection_response __connection_response)) _connection_response)
  (:serialization-length
   ()
   (+
    ;; string _connection_response
    4 (length _connection_response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _connection_response
       (write-long (length _connection_response) s) (princ _connection_response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _connection_response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _connection_response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hello_protocol::Connection
  :super ros::object
  :slots ())

(setf (get hello_protocol::Connection :md5sum-) "351d733a7219728e094fe3e87d955c3a")
(setf (get hello_protocol::Connection :datatype-) "hello_protocol/Connection")
(setf (get hello_protocol::Connection :request) hello_protocol::ConnectionRequest)
(setf (get hello_protocol::Connection :response) hello_protocol::ConnectionResponse)

(defmethod hello_protocol::ConnectionRequest
  (:response () (instance hello_protocol::ConnectionResponse :init)))

(setf (get hello_protocol::ConnectionRequest :md5sum-) "351d733a7219728e094fe3e87d955c3a")
(setf (get hello_protocol::ConnectionRequest :datatype-) "hello_protocol/ConnectionRequest")
(setf (get hello_protocol::ConnectionRequest :definition-)
      "string connection_request
---
string connection_response

")

(setf (get hello_protocol::ConnectionResponse :md5sum-) "351d733a7219728e094fe3e87d955c3a")
(setf (get hello_protocol::ConnectionResponse :datatype-) "hello_protocol/ConnectionResponse")
(setf (get hello_protocol::ConnectionResponse :definition-)
      "string connection_request
---
string connection_response

")



(provide :hello_protocol/Connection "351d733a7219728e094fe3e87d955c3a")


