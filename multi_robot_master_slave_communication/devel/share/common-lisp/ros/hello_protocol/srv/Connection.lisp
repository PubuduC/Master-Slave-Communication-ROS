; Auto-generated. Do not edit!


(cl:in-package hello_protocol-srv)


;//! \htmlinclude Connection-request.msg.html

(cl:defclass <Connection-request> (roslisp-msg-protocol:ros-message)
  ((connection_request
    :reader connection_request
    :initarg :connection_request
    :type cl:string
    :initform ""))
)

(cl:defclass Connection-request (<Connection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_protocol-srv:<Connection-request> is deprecated: use hello_protocol-srv:Connection-request instead.")))

(cl:ensure-generic-function 'connection_request-val :lambda-list '(m))
(cl:defmethod connection_request-val ((m <Connection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_protocol-srv:connection_request-val is deprecated.  Use hello_protocol-srv:connection_request instead.")
  (connection_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connection-request>) ostream)
  "Serializes a message object of type '<Connection-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'connection_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'connection_request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connection-request>) istream)
  "Deserializes a message object of type '<Connection-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'connection_request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'connection_request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connection-request>)))
  "Returns string type for a service object of type '<Connection-request>"
  "hello_protocol/ConnectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connection-request)))
  "Returns string type for a service object of type 'Connection-request"
  "hello_protocol/ConnectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connection-request>)))
  "Returns md5sum for a message object of type '<Connection-request>"
  "351d733a7219728e094fe3e87d955c3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connection-request)))
  "Returns md5sum for a message object of type 'Connection-request"
  "351d733a7219728e094fe3e87d955c3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connection-request>)))
  "Returns full string definition for message of type '<Connection-request>"
  (cl:format cl:nil "string connection_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connection-request)))
  "Returns full string definition for message of type 'Connection-request"
  (cl:format cl:nil "string connection_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connection-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'connection_request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Connection-request
    (cl:cons ':connection_request (connection_request msg))
))
;//! \htmlinclude Connection-response.msg.html

(cl:defclass <Connection-response> (roslisp-msg-protocol:ros-message)
  ((connection_response
    :reader connection_response
    :initarg :connection_response
    :type cl:string
    :initform ""))
)

(cl:defclass Connection-response (<Connection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_protocol-srv:<Connection-response> is deprecated: use hello_protocol-srv:Connection-response instead.")))

(cl:ensure-generic-function 'connection_response-val :lambda-list '(m))
(cl:defmethod connection_response-val ((m <Connection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_protocol-srv:connection_response-val is deprecated.  Use hello_protocol-srv:connection_response instead.")
  (connection_response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connection-response>) ostream)
  "Serializes a message object of type '<Connection-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'connection_response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'connection_response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connection-response>) istream)
  "Deserializes a message object of type '<Connection-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'connection_response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'connection_response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connection-response>)))
  "Returns string type for a service object of type '<Connection-response>"
  "hello_protocol/ConnectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connection-response)))
  "Returns string type for a service object of type 'Connection-response"
  "hello_protocol/ConnectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connection-response>)))
  "Returns md5sum for a message object of type '<Connection-response>"
  "351d733a7219728e094fe3e87d955c3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connection-response)))
  "Returns md5sum for a message object of type 'Connection-response"
  "351d733a7219728e094fe3e87d955c3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connection-response>)))
  "Returns full string definition for message of type '<Connection-response>"
  (cl:format cl:nil "string connection_response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connection-response)))
  "Returns full string definition for message of type 'Connection-response"
  (cl:format cl:nil "string connection_response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connection-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'connection_response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Connection-response
    (cl:cons ':connection_response (connection_response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Connection)))
  'Connection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Connection)))
  'Connection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connection)))
  "Returns string type for a service object of type '<Connection>"
  "hello_protocol/Connection")