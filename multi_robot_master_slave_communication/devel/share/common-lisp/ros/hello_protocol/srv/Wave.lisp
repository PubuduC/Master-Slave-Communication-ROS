; Auto-generated. Do not edit!


(cl:in-package hello_protocol-srv)


;//! \htmlinclude Wave-request.msg.html

(cl:defclass <Wave-request> (roslisp-msg-protocol:ros-message)
  ((waving
    :reader waving
    :initarg :waving
    :type cl:string
    :initform ""))
)

(cl:defclass Wave-request (<Wave-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wave-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wave-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_protocol-srv:<Wave-request> is deprecated: use hello_protocol-srv:Wave-request instead.")))

(cl:ensure-generic-function 'waving-val :lambda-list '(m))
(cl:defmethod waving-val ((m <Wave-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_protocol-srv:waving-val is deprecated.  Use hello_protocol-srv:waving instead.")
  (waving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wave-request>) ostream)
  "Serializes a message object of type '<Wave-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'waving))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'waving))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wave-request>) istream)
  "Deserializes a message object of type '<Wave-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waving) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'waving) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wave-request>)))
  "Returns string type for a service object of type '<Wave-request>"
  "hello_protocol/WaveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wave-request)))
  "Returns string type for a service object of type 'Wave-request"
  "hello_protocol/WaveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wave-request>)))
  "Returns md5sum for a message object of type '<Wave-request>"
  "e4fbbf8de027480172f47df2390f2c22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wave-request)))
  "Returns md5sum for a message object of type 'Wave-request"
  "e4fbbf8de027480172f47df2390f2c22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wave-request>)))
  "Returns full string definition for message of type '<Wave-request>"
  (cl:format cl:nil "string waving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wave-request)))
  "Returns full string definition for message of type 'Wave-request"
  (cl:format cl:nil "string waving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wave-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'waving))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wave-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Wave-request
    (cl:cons ':waving (waving msg))
))
;//! \htmlinclude Wave-response.msg.html

(cl:defclass <Wave-response> (roslisp-msg-protocol:ros-message)
  ((waving_back
    :reader waving_back
    :initarg :waving_back
    :type cl:string
    :initform ""))
)

(cl:defclass Wave-response (<Wave-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wave-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wave-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_protocol-srv:<Wave-response> is deprecated: use hello_protocol-srv:Wave-response instead.")))

(cl:ensure-generic-function 'waving_back-val :lambda-list '(m))
(cl:defmethod waving_back-val ((m <Wave-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_protocol-srv:waving_back-val is deprecated.  Use hello_protocol-srv:waving_back instead.")
  (waving_back m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wave-response>) ostream)
  "Serializes a message object of type '<Wave-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'waving_back))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'waving_back))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wave-response>) istream)
  "Deserializes a message object of type '<Wave-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waving_back) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'waving_back) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wave-response>)))
  "Returns string type for a service object of type '<Wave-response>"
  "hello_protocol/WaveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wave-response)))
  "Returns string type for a service object of type 'Wave-response"
  "hello_protocol/WaveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wave-response>)))
  "Returns md5sum for a message object of type '<Wave-response>"
  "e4fbbf8de027480172f47df2390f2c22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wave-response)))
  "Returns md5sum for a message object of type 'Wave-response"
  "e4fbbf8de027480172f47df2390f2c22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wave-response>)))
  "Returns full string definition for message of type '<Wave-response>"
  (cl:format cl:nil "string waving_back~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wave-response)))
  "Returns full string definition for message of type 'Wave-response"
  (cl:format cl:nil "string waving_back~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wave-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'waving_back))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wave-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Wave-response
    (cl:cons ':waving_back (waving_back msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Wave)))
  'Wave-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Wave)))
  'Wave-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wave)))
  "Returns string type for a service object of type '<Wave>"
  "hello_protocol/Wave")